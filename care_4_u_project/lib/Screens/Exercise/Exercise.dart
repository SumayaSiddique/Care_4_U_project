import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:pedometer/pedometer.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:intl/intl.dart';

String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}

class ExerciseScreen extends StatefulWidget {
  @override
  _ExerciseScreenState createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  String _status = '?', _steps = '?';
  double percent = 1.0;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void onStepCount(StepCount event) {
    print(event);
    setState(() {
      _steps = event.steps.toString();
      percent = event.steps == 10000 ? 1.0 : event.steps / 10000;
    });
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
    setState(() {
      _status = event.status;
    });
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
    setState(() {
      _status = 'Pedestrian Status not available';
    });
    print(_status);
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    setState(() {
      _steps = 'Step Count not available';
    });
  }

  void initPlatformState() {
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdbefe1),
      // appBar: AppBar(
      //   title: const Text('Pedometer'),
      // ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Text(
                    "Step Counter",
                    style: TextStyle(
                        fontSize: Get.textTheme.headline4!.fontSize,
                        color: Color(0xff1d617A),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Today, " +
                            formatDate(
                              DateTime.now(),
                            ),
                        style: TextStyle(
                            fontSize: Get.textTheme.headline6!.fontSize,
                            color: Color(0xff1d617A),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 120),
                  CircularPercentIndicator(
                    radius: 200.0,
                    lineWidth: 10.0,
                    percent: 1.0,

                    animation: true,
                    animationDuration: 1200,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Steps taken:',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          _steps,
                          style: TextStyle(fontSize: 60),
                        ),
                      ],
                    ),
                    // header: Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 16.0),
                    //   child: Text(
                    //     "Add a glass of water",
                    //     style: TextStyle(
                    //       fontSize: Get.textTheme.headline6!.fontSize,
                    //     ),
                    //   ),
                    // ),
                    backgroundColor: Colors.grey,
                    progressColor: Color(0xff1d617A),
                  ),
                ],
              ),
            ),
            // Text(
            //   'Steps taken:',
            //   style: TextStyle(fontSize: 30),
            // ),
            // Text(
            //   _steps,
            //   style: TextStyle(fontSize: 60),
            // ),
            // Divider(
            //   height: 100,
            //   thickness: 0,
            //   color: Colors.white,
            // ),
            SizedBox(height: 60),
            Text(
              'Pedestrian status:',
              style: TextStyle(fontSize: 30),
            ),
            Icon(
              _status == 'walking'
                  ? Icons.directions_walk
                  : _status == 'stopped'
                      ? Icons.accessibility_new
                      : Icons.error,
              size: 100,
            ),
            Center(
              child: Text(
                _status,
                style: _status == 'walking' || _status == 'stopped'
                    ? TextStyle(fontSize: 30)
                    : TextStyle(fontSize: 20, color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
