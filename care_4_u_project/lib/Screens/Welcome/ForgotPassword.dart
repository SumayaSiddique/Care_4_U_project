import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  String email = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff9fccc3),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 32,
                    color: Color(0xff1d617A),
                    fontFamily: 'SF Pro Rounded',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "Enter the email associated with your account and we'll send an email with instructions to rest your password.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff1d617A),
                      fontFamily: 'SF Pro Rounded',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                // SizedBox(height: 24),
                SizedBox(height: 60),
                Container(
                  height: 70,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email Address",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 4,
                      ),
                      fillColor: Color.fromRGBO(230, 230, 230, 1.0),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Color(0xff1d617A),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.4,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.4,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.4,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
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
                      setState(
                        () {
                          email = value;
                        },
                      );
                    },
                  ),
                ),
                // SizedBox(height: 5.0),
                Center(
                  child: Container(
                    height: 50,
                    width: 240,
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
                          fontSize: 22,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          // await Provider.of<AuthService>(context,
                          //         listen: false)
                          //     .signIn(email.trim(), password.trim());
                        }
                        setState(() {
                          Navigator.pop(context);
                        });
                        // print(email + password);
                      },
                      child: Text(
                        'Reset Password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
