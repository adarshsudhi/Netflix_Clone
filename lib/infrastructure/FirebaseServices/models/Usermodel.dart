import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Usermode {
  final String Username;
  final String email;
  final String Date;
  final String UID;
  Usermode({
    required this.Username,
    required this.email,
    required this.Date,
    required this.UID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Username': Username,
      'email': email,
      'Date': Date,
      'UID': UID,
    };
  }

  factory Usermode.fromMap(DocumentSnapshot<Map<String, dynamic>> map) {
    return Usermode(
      Username: map['Username'] as String,
      email: map['email'] as String,
      Date: map['Date'] as String,
      UID: map['UID'] as String,
    );
  }
}
