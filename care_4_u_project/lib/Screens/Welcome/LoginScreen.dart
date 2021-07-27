import 'dart:ui';

import 'package:care_4_u_project/FirebaseAuth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_svg/svg.dart';

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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(99, 112, 176, 1.0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Positioned(
                child: SvgPicture.asset(
                  'images/login.svg',
                  fit: BoxFit.contain,
                ),
                left: size.width * 0.01,
                top: size.height * 0.125,
              ),
              ClipRRect(
                // Clip it cleanly.
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Container(
                    color: Colors.grey.withOpacity(0.05),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.15, bottom: size.height * 0.225),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Let's sign you in.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontFamily: 'SF Pro Rounded',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: size.height * 0.01,
                                right: size.height * 0.015),
                            child: Text(
                              "Welcome back. \nYou've been missed",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontFamily: 'SF Pro Rounded',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.01,
                left: size.width * 0.025,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.keyboard_backspace,
                    size: size.height * 0.035,
                    color: Colors.white,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.575,
                        right: size.width * 0.075,
                        left: size.width * 0.075,
                        bottom: size.height * 0.025,
                      ),
                      child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 20.0,
                            ),
                            hintText: 'Email Address',
                            fillColor: Color.fromRGBO(
                              230,
                              230,
                              230,
                              1.0,
                            ),
                            filled: true,
                            prefixIcon: Icon(Icons.mail),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              borderSide: BorderSide(
                                  style: BorderStyle.none, width: 0.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
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
                    Padding(
                      padding: EdgeInsets.only(
                          right: size.width * 0.075,
                          left: size.width * 0.075,
                          bottom: size.height * 0.055),
                      child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 20.0,
                            ),
                            hintText: 'Password',
                            fillColor: Color.fromRGBO(
                              230,
                              230,
                              230,
                              1.0,
                            ),
                            filled: true,
                            prefixIcon: Icon(Icons.vpn_key),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              borderSide: BorderSide(
                                style: BorderStyle.none,
                                width: 0.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length < 8) {
                              return 'Please enter a proper password';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          }),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(219, 120, 140, 1.0),
                          fixedSize:
                              Size(size.width * 0.75, size.height * 0.065),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          textStyle: TextStyle(
                            fontSize: 24,
                            fontFamily: 'SF Pro Rounded',
                          ),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            await Provider.of<AuthService>(context,
                                    listen: false)
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
