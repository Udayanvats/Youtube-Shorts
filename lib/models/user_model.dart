import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class User {
  String name;
  String profilePic;
  String email;
  String uid;
  User(
      {required this.name,
      required this.profilePic,
      required this.uid,
      required this.email});

  Map<String, dynamic> toJson() => {
        "name": name,
        "profilePic": profilePic,
        "email": email,
        "uid": uid,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(email: snapshot['email'], name: snapshot['name'], profilePic: snapshot['profilePic'], uid: snapshot['uid']);
  }
}
