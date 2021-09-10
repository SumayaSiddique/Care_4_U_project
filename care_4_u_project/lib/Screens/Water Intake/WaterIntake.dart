import 'package:care_4_u_project/Datamodel/WaterIntake/WaterIntakeModel.dart';
import 'package:care_4_u_project/Screens/modules/chart.dart';
import 'package:care_4_u_project/Services/FirestoreManager/WaterIntake/WaterIntakeFirestoreManager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class WaterIntake extends StatefulWidget {
  const WaterIntake({Key? key}) : super(key: key);

  @override
  _WaterIntakeState createState() => _WaterIntakeState();
}

class _WaterIntakeState extends State<WaterIntake> {
  getWaterData() async {
    waterData = await WaterIntakeManager.getWaterDrankData();
  }

  late WaterIntakeModel waterData;
  int userGoal = 0;
  @override
  Widget build(BuildContext context) {
    final _addGoal = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Color(0xffdbefe1),
      body: FutureBuilder(
        future: getWaterData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            double percentage =
                (waterData.numberOfGlasses / waterData.dailyGoal);
            return Column(
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
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: TextButton(
                          onPressed: () {
                            Get.bottomSheet(
                              SingleChildScrollView(
                                child: Container(
                                  color: Colors.white,
                                  height: Get.height * 0.325,
                                  child: Form(
                                    key: _addGoal,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Container(
                                            height: 6,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              color: Colors.black38,
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Add a goal to drink water",
                                          style: Get.textTheme.headline5,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            maxLength: 2,
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(Icons.add),
                                              hintText:
                                                  'How many glasses would you like to drink a day?',
                                              fillColor: Colors.white38,
                                              filled: true,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black54,
                                                    width: 1.0),
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                              ),
                                            ),
                                            validator: (value) => value!.isEmpty
                                                ? 'Please enter a value' +
                                                    ' for daily water goal'
                                                : null,
                                            onChanged: (value) {
                                              userGoal = int.parse(value);
                                            },
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () async {
                                            if (_addGoal.currentState!
                                                .validate()) {
                                              WaterIntakeManager.updateGoal(
                                                  userGoal);
                                              setState(() {
                                                getWaterData();
                                              });
                                              Get.back();
                                            }
                                          },
                                          child: Text(
                                            'Add Daily Water Goal',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100,
                                                color: Colors.white70),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              isDismissible: true,
                            );
                          },
                          child: Text(
                            'Set goal',
                            style: TextStyle(
                              fontSize: Get.textTheme.headline6!.fontSize,
                            ),
                          ),
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
                          waterData.dailyGoal.toString(),
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
                          "${percentage * 100}%",
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
                  percent: percentage,
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
                    onPressed: () {
                      // setState(() {
                      //   print(glassesDrank);
                      // });
                    },
                  ),
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
