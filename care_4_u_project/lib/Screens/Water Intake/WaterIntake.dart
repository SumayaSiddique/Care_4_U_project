import 'package:care_4_u_project/Screens/modules/chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class WaterIntake extends StatefulWidget {
  const WaterIntake({Key? key}) : super(key: key);

  @override
  _WaterIntakeState createState() => _WaterIntakeState();
}

class _WaterIntakeState extends State<WaterIntake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 8.0,
              vertical: Get.height / 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Stay Hydrated",
                  style: TextStyle(
                    fontSize: Get.textTheme.headline5!.fontSize,
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  "Track Your Water Intake",
                  style: TextStyle(
                    fontSize: Get.textTheme.headline6!.fontSize,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              SizedBox(
                width: Get.width / 5.35,
              ),
              Column(
                children: [
                  Text(
                    "Goal",
                    style: TextStyle(
                      fontSize: Get.textTheme.headline6!.fontSize,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "2500 ml",
                    style: TextStyle(
                      fontSize: Get.textTheme.headline6!.fontSize,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: Get.width / 4.95,
              ),
              Column(
                children: [
                  Text(
                    "Completed",
                    style: TextStyle(
                      fontSize: Get.textTheme.headline6!.fontSize,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "50%",
                    style: TextStyle(
                      fontSize: Get.textTheme.headline6!.fontSize,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          CircularPercentIndicator(
            radius: 200.0,
            lineWidth: 10.0,
            percent: 0.8,
            animation: true,
            animationDuration: 1200,
            header: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "Add a glass of water",
                style: TextStyle(
                  fontSize: Get.textTheme.headline6!.fontSize,
                ),
              ),
            ),
            center: IconButton(
              icon: Icon(
                Icons.add,
                size: 25.0,
              ),
              color: Colors.blue,
              onPressed: () {},
            ),
            backgroundColor: Colors.grey,
            progressColor: Colors.blue,
          ),
          SizedBox(
            height: 20.0,
          ),
          Flexible(
            child: WaterIntakeChart(),
          ),
        ],
      ),
    );
  }
}
