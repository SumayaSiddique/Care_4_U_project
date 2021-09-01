import 'package:flutter/material.dart';

class BMR extends StatefulWidget {
  const BMR({Key? key}) : super(key: key);

  @override
  _BMRState createState() => _BMRState();
}

class _BMRState extends State<BMR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMR Calculator"),
      ),
    );
  }
}
