import 'package:care_4_u_project/Datamodel/WaterIntake/WaterIntakeModel.dart';
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
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100.0,
                    ),
                    Text(
                      "Stay Hydrated",
                      style: TextStyle(
                        fontSize: Get.textTheme.headline4!.fontSize,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1d617A),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Track Your Water Intake",
                      style: TextStyle(
                        fontSize: Get.textTheme.headline6!.fontSize,
                        color: Color(0xff1d617A).withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      height: 48.0,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Container(
                              height: 110,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff4AD879),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8,
                                    color: Colors.black.withOpacity(0.2),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12.0,
                                  horizontal: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Goal",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 22,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      waterData.dailyGoal.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Container(
                              height: 110,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff4BB5FE),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8,
                                    color: Colors.black.withOpacity(0.2),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12.0,
                                  horizontal: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Completed",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 22,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "${percentage.toPrecision(1) * 100}%",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    CircularPercentIndicator(
                      radius: 200.0,
                      lineWidth: 10.0,
                      percent: percentage,

                      animation: true,
                      animationDuration: 1200,
                      // arcBackgroundColor: Colors.green,
                      // arcType: ArcType.FULL,
                      header: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: Text(
                            "Add a glass of water",
                            style: TextStyle(
                              fontSize: Get.textTheme.headline5!.fontSize,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1d617A),
                            ),
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
                          if (waterData.timestamp.toDate().day ==
                              DateTime.now().day) {
                            if (waterData.numberOfGlasses <
                                waterData.dailyGoal) {
                              setState(() {
                                WaterIntakeManager.addWater();
                              });
                            } else {
                              percentage = 1.0;
                              Get.snackbar('Water Intake Goal',
                                  'Congratulations on finishing your goal',
                                  snackPosition: SnackPosition.BOTTOM);
                            }
                          } else {
                            WaterIntakeManager.resetWater();
                          }
                        },
                      ),
                      backgroundColor: Color(0xff4AD879),
                      progressColor: Color(0xff4BB5FE),
                    ),
                    SizedBox(height: 60.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Center(
                        child: Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.bottomSheet(
                                SingleChildScrollView(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    height: 220,
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
                                              keyboardType:
                                                  TextInputType.number,
                                              maxLength: 2,
                                              decoration: InputDecoration(
                                                prefixIcon: Icon(Icons.add),
                                                hintText: 'Glasses per day',
                                                fillColor: Colors.white38,
                                                counterText: "",
                                                filled: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black54,
                                                      width: 1.0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    12.0,
                                                  ),
                                                ),
                                              ),
                                              validator: (value) => value!
                                                      .isEmpty
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
                      ),
                    ),
                  ],
                ),
              ),
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
