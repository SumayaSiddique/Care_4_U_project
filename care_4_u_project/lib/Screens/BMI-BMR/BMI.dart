import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    final double bmiValue = 24.9;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Your BMI Result',
              style: TextStyle(
                fontSize: Get.textTheme.headline5!.fontSize,
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
              color: Colors.white70,
              width: Get.width / 1.5,
              height: Get.height / 20.0,
              child: Center(
                child: Text(
                  bmiValue < 18.5
                      ? 'You are underweight.'
                      : bmiValue <= 24.9
                          ? 'Your weight is normal.'
                          : bmiValue >= 25.0 && bmiValue <= 29.9
                              ? 'You are overweight'
                              : 'You are obese',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Get.textTheme.headline6!.fontSize,
                    color: bmiValue < 18.5
                        ? Colors.blue
                        : bmiValue <= 24.9
                            ? Colors.green
                            : bmiValue >= 25.0 && bmiValue <= 29.9
                                ? Colors.yellow
                                : Colors.red,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Center(
            child: Container(
              width: Get.width / 1.15,
              child: SfLinearGauge(
                minimum: 13.5,
                maximum: 34.5,
                showAxisTrack: false,
                ranges: <LinearGaugeRange>[
                  LinearGaugeRange(
                    endValue: 18.4,
                    color: Colors.lightBlue,
                    position: LinearElementPosition.inside,
                    startWidth: 10.0,
                    endWidth: 20.0,
                    edgeStyle: LinearEdgeStyle.startCurve,
                  ),
                  LinearGaugeRange(
                    startValue: 18.5,
                    endValue: 24.9,
                    color: Colors.green,
                    position: LinearElementPosition.inside,
                    startWidth: 20.0,
                    endWidth: 20.0,
                  ),
                  LinearGaugeRange(
                    startValue: 25.0,
                    endValue: 29.9,
                    color: Colors.yellow[700],
                    position: LinearElementPosition.inside,
                    startWidth: 20.0,
                    endWidth: 20.0,
                  ),
                  LinearGaugeRange(
                    startValue: 30.0,
                    endValue: 34.9,
                    color: Colors.red,
                    position: LinearElementPosition.inside,
                    startWidth: 20.0,
                    endWidth: 10.0,
                    edgeStyle: LinearEdgeStyle.endCurve,
                  ),
                ],
                showLabels: false,
                markerPointers: [
                  LinearWidgetPointer(
                    value: bmiValue,
                    child: Container(
                      height: 30,
                      width: 5,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Center(
            child: Text(
              'Your BMI is ${bmiValue}',
              style: TextStyle(
                fontSize: Get.textTheme.headline6!.fontSize,
              ),
            ),
          )
        ],
      ),
    );
  }
}
