import 'dart:ui';

import 'package:care_4_u_project/FirebaseAuth/auth_service.dart';
import 'package:care_4_u_project/FirestoreManager/UserSignUp/UserSignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String email = "", password = "", name = "";
  double height = 0, weight = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(171, 176, 255, 1.0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Positioned(
                child: SvgPicture.asset(
                  'images/sign-in.svg',
                  fit: BoxFit.contain,
                ),
                left: size.width * 0.01,
                top: size.height * 0.0005,
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
                          top: size.height * 0.15, bottom: size.height * 0.3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: size.width * 0.45,
                                bottom: size.height * 0.0025),
                            child: Text(
                              "Create",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                letterSpacing: 2.5,
                                fontSize: 42,
                                color: Colors.white,
                                fontFamily: 'SF Pro Rounded',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: size.width * 0.365,
                            ),
                            child: Text(
                              "Account",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                letterSpacing: 2.5,
                                fontSize: 42,
                                color: Colors.white,
                                fontFamily: 'SF Pro Rounded',
                                fontWeight: FontWeight.w600,
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
                          top: size.height * 0.465,
                          right: size.width * 0.075,
                          left: size.width * 0.075,
                          bottom: size.height * 0.025),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 10.0,
                          ),
                          hintText: 'Enter your email',
                          fillColor: Color.fromRGBO(230, 230, 230, 1.0),
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
                            borderSide:
                                BorderSide(style: BorderStyle.none, width: 0.0),
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
                          email = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: size.width * 0.075,
                        left: size.width * 0.075,
                        bottom: size.height * 0.025,
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 10.0,
                          ),
                          hintText: 'Enter your password',
                          fillColor: Color.fromRGBO(230, 230, 230, 1.0),
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
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          password = value;
                        },
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(219, 120, 140, 1.0),
                          fixedSize:
                              Size(size.width * 0.75, size.height * 0.07),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xFFFFFF),
                            ),
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
                                .signUp(
                              email.trim(),
                              password.trim(),
                            );
                            await UserSignUp().addUserData(
                              'Imran Sefat',
                              69,
                              185,
                            );
                            Navigator.pop(context);
                          }
                          // Navigator.pushNamed(context, 'login');
                        },
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SF Pro Rounded',
                            fontWeight: FontWeight.w600,
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
