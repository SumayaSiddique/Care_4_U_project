import 'package:care_4_u/Screens/Home/HomeView.dart';
import 'package:care_4_u/Screens/Welcome/login-screen.dart';
import 'package:care_4_u/Screens/Welcome/sign-up-screen.dart';
import 'package:care_4_u/Screens/Welcome/splash-screen.dart';
import 'package:care_4_u/Screens/Welcome/welcome-screen.dart';
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
        'home-page': (context) => HomeView(),
      },
    );
  }
}
