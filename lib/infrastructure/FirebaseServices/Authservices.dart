import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:netflix/infrastructure/FirebaseServices/models/Usermodel.dart';
import 'package:netflix/core/Colors/Strings.dart';
import 'package:netflix/infrastructure/FirebaseServices/models/VideoModel/VideoModel.dart';
import 'package:netflix/presentation/LoginScreen/LoginScreen.dart';

class Authservice {
  SignUPuser(String email, String password, String Username,
      BuildContext context) async {
    try {
      String res = "started";
      await Auth.createUserWithEmailAndPassword(
          email: email, password: password);

      await Firestore.collection('user').doc(Auth.currentUser!.uid).set(
          Usermode(
                  UID: Auth.currentUser!.uid,
                  Username: Username,
                  email: email,
                  Date: DateTime.now().toString())
              .toMap());
      res = "Done";
      return res;
    } catch (e) {
      return e.toString();
    }
  }

  LoginUser(String Email, String Password) async {
    try {
      String res = "Started";
      await Auth.signInWithEmailAndPassword(email: Email, password: Password);
      res = "Done";
      return res;
    } catch (e) {
      return e.toString();
    }
  }

  SignOutuser(BuildContext context) {
    Auth.signOut().then((v) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  UploadVideo(File videfile) async {
    final len = await Firestore.collection('videos').get();
    final length = len.docs.length;
    Reference file =
        await storage.ref().child("videos").child("video${length}");
    UploadTask task = file.putFile(videfile);
    TaskSnapshot uploadTask = await task;
    String URL = await uploadTask.ref.getDownloadURL();
    return URL;
  }

  UploadtoFirestore(String Email, String Username, String UID, String title,
      String description, String downloadurl) async {
    final len = await Firestore.collection('videos').get();
    final length = len.docs.length;
    await Firestore.collection("videos").doc("video$length").set(
        VideoModel(Username, Email, UID, title, description, downloadurl, [])
            .toJson());
  }
}
