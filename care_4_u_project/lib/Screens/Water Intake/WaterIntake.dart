import 'package:flutter/material.dart';

class WaterIntake extends StatefulWidget {
  const WaterIntake({Key? key}) : super(key: key);

  @override
  _WaterIntakeState createState() => _WaterIntakeState();
}

class _WaterIntakeState extends State<WaterIntake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily water Intake"),
      ),
      body: Column(
        children: [Text("sabu")],
      ),
    );
  }
}
