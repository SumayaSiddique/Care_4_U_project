import 'package:care_4_u_project/Screens/CoronaStatus/CoronaStatusPage.dart';
import 'package:care_4_u_project/Screens/Home/HomeView.dart';
import 'package:care_4_u_project/Screens/Welcome/ForgotPassword.dart';
import 'package:care_4_u_project/Screens/Welcome/LoginScreen.dart';
import 'package:care_4_u_project/Screens/Welcome/SignUpScreen.dart';
import 'package:care_4_u_project/Screens/Welcome/WelcomeScreen.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/WorkoutLevel.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/WorkoutScreen.dart';
import 'package:care_4_u_project/Services/FirebaseAuth/Wrapper.dart';
import 'package:care_4_u_project/Services/FirebaseAuth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/DetailedViews/DiabetesDetailsView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }
        return CircularProgressIndicator();
      },
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (context) => AuthService(firebaseAuth: FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStatechanges,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Care 4 U',
        home: AuthenticationWrapper(),
        // theme: ThemeData.dark(),
        theme: ThemeData(
          fontFamily: 'SF Pro Rounded',
        ),
        routes: {
          // 'splash': (context) => Splash(),
          'welcome-screen': (context) => WelcomeScreen(),
          'login': (context) => LoginScreen(),
          'sign-up': (context) => SignUpScreen(),
          'home': (context) => HomeView(),
          'diabetes-details': (context) => DiabetesDetailsView(),
          'forgot-password': (context) => ForgotPassword(),
          '/corona-status': (_) => CoronaStatusPage(),
          '/workouts': (_) => WorkoutScreen(),
          // '/workouts/Men': (_) => WorkOutLevel(category: category),
        },
      ),
    );
  }
}
