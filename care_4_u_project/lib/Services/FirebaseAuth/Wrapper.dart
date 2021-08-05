import 'package:care_4_u_project/Screens/Home/HomeView.dart';
import 'package:care_4_u_project/Screens/Welcome/WelcomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser == null) {
      print('NO USER FOUND!');
      return WelcomeScreen();
    } else {
      print('User logged in');
      return HomeView();
    }
  }
}
