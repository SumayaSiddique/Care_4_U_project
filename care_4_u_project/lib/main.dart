import 'package:care_4_u_project/Screens/Welcome/LoginScreen.dart';
import 'package:care_4_u_project/Screens/Welcome/SignUpScreen.dart';
import 'package:care_4_u_project/Screens/Welcome/SplashScreen.dart';
import 'package:care_4_u_project/Screens/Welcome/WelcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class App extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        // if (snapshot.hasError) {
        //   return SomethingWentWrong();
        // }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Care 4 U',
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
