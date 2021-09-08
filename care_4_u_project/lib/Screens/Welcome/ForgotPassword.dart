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
      // backgroundColor: Color.fromRGBO(99, 112, 176, 1.0),
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
                  style: Get.textTheme.headline4,
                ),
                SizedBox(height: 8),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "Enter the email associated with your account and we'll send an email with instructions to rest your password",
                    style: Get.textTheme.headline6,
                  ),
                ),
                // SizedBox(height: 24),
                SizedBox(height: 60),
                Container(
                  height: 100,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 4,
                      ),
                      // fillColor: Color.fromRGBO(230, 230, 230, 1.0),
                      filled: true,
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
                Container(
                  // height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff7B39ED),
                      fixedSize: Size(size.width * 0.75, size.height * 0.065),
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
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
