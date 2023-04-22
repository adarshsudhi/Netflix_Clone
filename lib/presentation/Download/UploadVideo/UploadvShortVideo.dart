import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/Application/Firebase/Getcurretnuser/getcurrentuser_bloc.dart';
import 'package:netflix/core/Colors/Spaces.dart';
import 'package:image_picker/image_picker.dart';
import 'package:netflix/infrastructure/FirebaseServices/Authservices.dart';
import 'package:netflix/presentation/Download/Download.dart';
import 'package:netflix/presentation/LoginScreen/LoginScreen.dart';
import 'package:video_player/video_player.dart';
import '../../../core/Colors/Strings.dart';

class UplaodShortVidoo extends StatefulWidget {
  final File Videofile;
  const UplaodShortVidoo({super.key, required this.Videofile});

  @override
  State<UplaodShortVidoo> createState() => _UplaodShortVidooState();
}

class _UplaodShortVidooState extends State<UplaodShortVidoo> {
  bool video = false;

  bool _Ispaused = false;
  bool _uploadiing = false;

  double _uploading = 0.0;
  late VideoPlayerController _controller;

  final TextEditingController _titlecontroller = TextEditingController();
  final TextEditingController _Diescriptioncontroller = TextEditingController();

  Future<String> UploadVideo(File videfile) async {
    final len = await Firestore.collection('videos').get();
    final length = len.docs.length;
    Reference file =
        await storage.ref().child("videos").child("video${length}");
    UploadTask task = file.putFile(videfile);

    showMessage() {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Upload Completed")));
    }

    task.snapshotEvents.listen((event) {
      setState(() {
        _uploadiing = true;
        _uploading =
            event.bytesTransferred.toDouble() / event.totalBytes.toDouble();
      });
    });

    task.whenComplete(() {
      setState(() {
        _uploadiing = false;
        showMessage();
      });
    });
    TaskSnapshot uploadTask = await task;
    String URL = await uploadTask.ref.getDownloadURL();
    return URL;
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(widget.Videofile);
    _controller.initialize();
    _controller.play();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    _titlecontroller.dispose();
    _Diescriptioncontroller.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    BlocProvider.of<GetcurrentuserBloc>(context)
        .add(GetcurrentuserEvent.getcurrentuser());
    return BlocBuilder<GetcurrentuserBloc, GetcurrentuserState>(
        builder: (context, Getcurretnstate) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            child: SafeArea(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      _Ispaused = !_Ispaused;
                      if (_Ispaused == true) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                    },
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Container(
                          height: _controller.value.size.height,
                          width: _controller.value.size.width,
                          child: VideoPlayer(_controller),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Customtextfield(
                          hintText: "Title",
                          secure: false,
                          controller: _titlecontroller,
                          iconData: Icons.title),
                      Customtextfield(
                          hintText: "Description",
                          secure: false,
                          controller: _Diescriptioncontroller,
                          iconData: Icons.subtitles)
                    ],
                  ),
                  Kheight30,
                  _uploadiing
                      ? Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            value: _uploading,
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Upload",
                              style: GoogleFonts.actor(
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                                onPressed: () async {
                                  String URL =
                                      await UploadVideo(widget.Videofile);

                                  await Authservice().UploadtoFirestore(
                                      Getcurretnstate.model.email,
                                      Getcurretnstate.model.Username,
                                      Getcurretnstate.model.UID,
                                      _titlecontroller.text.trim(),
                                      _Diescriptioncontroller.text.trim(),
                                      URL);
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.upload))
                          ],
                        )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
