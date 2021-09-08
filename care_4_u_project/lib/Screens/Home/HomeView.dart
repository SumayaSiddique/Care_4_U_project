import 'dart:ui';
import 'package:care_4_u_project/Screens/BMI-BMR/BMI.dart';
import 'package:care_4_u_project/Screens/BMI-BMR/BMR.dart';
import 'package:care_4_u_project/Screens/Blood%20Pressure/BloodPressureDetailsView.dart';
import 'package:care_4_u_project/Screens/DetailedViews/DiabetesDetailsView.dart';
import 'package:care_4_u_project/Screens/Exercise/Exercise.dart';
import 'package:care_4_u_project/Screens/Home/modules/HomeMediumCard.dart';
import 'package:care_4_u_project/Screens/Home/modules/MedicineView.dart';
import 'package:care_4_u_project/Screens/Water%20Intake/WaterIntake.dart';
import 'package:care_4_u_project/Services/FirebaseAuth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffdbefe1),
      // appBar: AppBar(
      //   title: Text("Care 4U"),
      //   actions: [
      //     IconButton(
      //       onPressed: () async {
      //         await context.read<AuthService>().logOut();
      //       },
      //       icon: Icon(
      //         FontAwesomeIcons.user,
      //       ),
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Welcome!",
                        style: TextStyle(
                          fontSize: theme.headline3!.fontSize,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1d617A),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () async {
                        await context.read<AuthService>().logOut();
                      },
                      icon: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color(0xff1d617A),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          FontAwesomeIcons.bell,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "Let's get healthy together",
                    style: TextStyle(
                        fontSize: theme.headline6!.fontSize,
                        fontWeight: FontWeight.w200,
                        color: Color(0xff1d617A)),
                  ),
                ),
                Container(
                  height: 220,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ExerciseScreen());
                          },
                          child: HomeMediumCard(
                            size: size,
                            theme: theme,
                            title: Text(
                              "7390",
                              style: theme.headline3!
                                  .apply(color: Color(0xffdbefe1)),
                            ),
                            subtitle: "Steps",
                            icon: RotatedBox(
                              quarterTurns: 3,
                              child: Icon(
                                FontAwesomeIcons.shoePrints,
                                color: Colors.white,
                              ),
                            ),
                            bgImage: 'images/HomeBG/Pedometer.jpeg',
                            color: Color(0xff1d617A),
                            //color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => WaterIntake());
                          },
                          child: HomeMediumCard(
                            size: size,
                            theme: theme,
                            title: Text(
                              "2",
                              style: theme.headline3!
                                  .apply(color: Color(0xffdbefe1)),
                            ),
                            subtitle: "Water",
                            icon: Icon(
                              FontAwesomeIcons.glassWhiskey,
                              color: Colors.white,
                            ),
                            caption: 'Cups',
                            bgImage: 'images/HomeBG/water.jpeg',
                            color: Color(0xff1d617A),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Get.to(() => BMI()),
                          child: HomeMediumCard(
                            size: size,
                            theme: theme,
                            title: Text(
                              "18",
                              style: theme.headline3!
                                  .apply(color: Color(0xffdbefe1)),
                            ),
                            subtitle: "BMI",
                            icon: Icon(
                              LineIcons.weight,
                              color: Colors.white,
                            ),
                            bgImage: 'images/HomeBG/Pedometer.jpeg',
                            color: Color(0xff1d617A),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Get.to(() => BMR()),
                          child: HomeMediumCard(
                            size: size,
                            theme: theme,
                            title: Text(
                              "46",
                              style: theme.headline3!
                                  .apply(color: Color(0xffdbefe1)),
                            ),
                            subtitle: "BMR",
                            icon: Icon(
                              LineIcons.poll,
                              color: Colors.white,
                            ),
                            bgImage: 'images/HomeBG/Pedometer.jpeg',
                            color: Color(0xff1d617A),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MedicineView(size: size, theme: theme),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => Get.to(() => BloodPressureDetailsView()),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: Offset(8, 8),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Color(0xffdbefe1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.heartbeat,
                                      color: Colors.red[400],
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Pressure",
                                        style: TextStyle(
                                            fontSize: theme.headline5!.fontSize,
                                            color: Color(0xff1d617A)),
                                      ),
                                      Opacity(
                                        opacity: 0.7,
                                        child: Text(
                                          "120/80",
                                          style: theme.headline6,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Color(0xffdbefe1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.arrowCircleRight,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(() => DiabetesDetailsView()),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: Offset(8, 8),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Color(0xffdbefe1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.syringe,
                                      color: Colors.green[400],
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Diabetes",
                                        style: TextStyle(
                                            fontSize: theme.headline5!.fontSize,
                                            color: Color(0xff1d617A)),
                                      ),
                                      Opacity(
                                        opacity: 0.7,
                                        child: Text(
                                          "7.5",
                                          style: theme.headline6,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Color(0xffdbefe1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.arrowCircleRight,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
