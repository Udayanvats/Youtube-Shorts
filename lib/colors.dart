import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:grotask/screens/addvideo.dart';
import 'package:grotask/screens/home_screen.dart';
import 'package:grotask/screens/videoscreen.dart';
import 'package:grotask/widgets/auth_controller.dart';

List pages = [
  HomeScreen(),
  VideoScreen(),
  const AddVideoScreen(),
  Text('Subscription'),
  Text('Library')
];
Color whiteColor = Colors.white;
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;
var authController = AuthController.instance;
const IconData subscriptions = IconData(0xe618, fontFamily: 'MaterialIcons');
const IconData subscriptions_outlined =
    IconData(0xf3fb, fontFamily: 'MaterialIcons');
