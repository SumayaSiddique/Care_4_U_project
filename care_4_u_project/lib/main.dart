import 'package:care_4_u_project/Screens/Welcome/LoginScreen.dart';
import 'package:care_4_u_project/Screens/Welcome/SignUpScreen.dart';
import 'package:care_4_u_project/Screens/Welcome/SplashScreen.dart';
import 'package:care_4_u_project/Screens/Welcome/WelcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Splash(),
      theme: ThemeData(
        fontFamily: 'SF Pro Rounded',
      ),
      routes: {
        'splash': (context) => Splash(),
        'welcome-screen': (context) => WelcomeScreen(),
        'login': (context) => LoginScreen(),
        'sign-up': (context) => SignUpScreen(),
      },
    );
  }
}
