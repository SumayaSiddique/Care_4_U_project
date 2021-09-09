import 'dart:ui';
import 'package:care_4_u_project/Services/FirebaseAuth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String email = "", password = "";

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff9fccc3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's sign you in.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xff1d617A),
                    fontFamily: 'SF Pro Rounded',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 40.0),
                Text(
                  "Welcome back. \nYou've been missed",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 32,
                    color: Color(0xff1d617A),
                    fontFamily: 'SF Pro Rounded',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email Address',
                        fillColor: Color.fromRGBO(
                          230,
                          230,
                          230,
                          1.0,
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color(0xff1d617A),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          borderSide:
                              BorderSide(style: BorderStyle.none, width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      }),
                ),
                TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      fillColor: Color.fromRGBO(
                        230,
                        230,
                        230,
                        1.0,
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.vpn_key,
                        color: Color(0xff1d617A),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty || value.length < 8) {
                        return 'Please enter a proper password';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    }),
                SizedBox(height: 20.0),
                Center(
                  child: Container(
                    width: 240,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff1d617A),
                        // fixedSize: Size(size.width * 0.75, size.height * 0.065),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await Provider.of<AuthService>(context, listen: false)
                              .signIn(email.trim(), password.trim());
                        }
                        setState(() {
                          Navigator.pop(context);
                        });
                        // print(email + password);
                      },
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        // fixedSize:
                        //     Size(size.width * 0.75, size.height * 0.065),
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                      onPressed: () async {
                        setState(() {
                          Navigator.pushNamed(context, '/forgot-password');
                        });
                      },
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'SF Pro Rounded',
                          color: Color(0xff1d617A),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
