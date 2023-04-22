import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

const String BaseURL = "https://api.themoviedb.org/3";
const String APIimageURL = 'https://image.tmdb.org/t/p/w500';
const String URL = "https://api.themoviedb.org/3/trending/all/day?api_key=";

final FirebaseAuth Auth = FirebaseAuth.instance;

final FirebaseFirestore Firestore = FirebaseFirestore.instance;

final FirebaseStorage storage = FirebaseStorage.instance;
