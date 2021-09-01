import 'dart:ui';
import 'package:care_4_u_project/Screens/BMI-BMR/BMI.dart';
import 'package:care_4_u_project/Screens/BMI-BMR/BMR.dart';
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
import 'package:glassmorphism/glassmorphism.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Text("Care 4U"),
        actions: [
          IconButton(
            onPressed: () async {
              await context.read<AuthService>().logOut();
            },
            icon: Icon(
              FontAwesomeIcons.user,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
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
                          style: theme.headline3!.apply(color: Colors.white),
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
                          style: theme.headline3!.apply(color: Colors.white),
                        ),
                        subtitle: "Water",
                        icon: Icon(
                          FontAwesomeIcons.glassWhiskey,
                          color: Colors.white,
                        ),
                        caption: 'Cups',
                        bgImage: 'images/HomeBG/water.jpeg',
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => BMI()),
                      child: HomeMediumCard(
                        size: size,
                        theme: theme,
                        title: Text(
                          "18",
                          style: theme.headline3!.apply(color: Colors.white),
                        ),
                        subtitle: "BMI",
                        icon: Icon(
                          LineIcons.weight,
                          color: Colors.white,
                        ),
                        bgImage: 'images/HomeBG/Pedometer.jpeg',
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => BMR()),
                      child: HomeMediumCard(
                        size: size,
                        theme: theme,
                        title: Text(
                          "46",
                          style: theme.headline3!.apply(color: Colors.white),
                        ),
                        subtitle: "BMR",
                        icon: Icon(
                          LineIcons.poll,
                          color: Colors.white,
                        ),
                        bgImage: 'images/HomeBG/Pedometer.jpeg',
                      ),
                    ),
                  ],
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //     Get.to(() => ExerciseScreen());
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 12.0),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         HomeMediumCard(
              //           size: size,
              //           theme: theme,
              //           title: Text(
              //             "7390",
              //             style: theme.headline3!.apply(color: Colors.white),
              //           ),
              //           subtitle: "Steps",
              //           icon: RotatedBox(
              //             quarterTurns: 3,
              //             child: Icon(
              //               FontAwesomeIcons.shoePrints,
              //               color: Colors.white,
              //             ),
              //           ),
              //           caption: null,
              //         ),
              //         HomeMediumCard(
              //           size: size,
              //           theme: theme,
              //           title: Text(
              //             "2",
              //             style: theme.headline3!.apply(color: Colors.white),
              //           ),
              //           subtitle: "Distance",
              //           icon: Icon(
              //             FontAwesomeIcons.walking,
              //             color: Colors.white,
              //           ),
              //           caption: 'Km',
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              MedicineView(size: size, theme: theme),
              GestureDetector(
                onTap: () {
                  Get.to(() => WaterIntake());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeMediumCard(
                        size: size,
                        theme: theme,
                        title: Text(
                          "2",
                          style: theme.headline3!.apply(color: Colors.white),
                        ),
                        subtitle: "Water",
                        icon: Icon(
                          FontAwesomeIcons.glassWhiskey,
                          color: Colors.white,
                        ),
                        caption: "Cups",
                        bgImage: 'images/HomeBG/Pedometer.jpeg',
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, '/blood-pressure-details'),
                        child: HomeMediumCard(
                          size: size,
                          theme: theme,
                          title: Text(
                            "120/80",
                            style: theme.headline4!.apply(color: Colors.white),
                          ),
                          subtitle: "Pressure",
                          icon: Icon(
                            FontAwesomeIcons.heartbeat,
                            color: Colors.white,
                          ),
                          color: Colors.redAccent,
                          bgImage: 'images/HomeBG/Pedometer.jpeg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/corona-status');
                      },
                      child: HomeMediumCard(
                        size: size,
                        theme: theme,
                        title: Text(
                          "8465",
                          style: theme.headline3!.apply(color: Colors.white),
                        ),
                        subtitle: "Covid-19",
                        icon: Icon(
                          FontAwesomeIcons.virus,
                          color: Colors.white,
                        ),
                        // caption: "Today's Cases",
                        color: Colors.redAccent,
                        bgImage: 'images/HomeBG/Pedometer.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => {
                              Navigator.pushNamed(context, '/diabetes-details'),
                            },
                            child: HomeMediumCard(
                              size: size,
                              theme: theme,
                              title: Text("7.5",
                                  style: theme.headline3!
                                      .apply(color: Colors.white)),
                              subtitle: "Diabetes",
                              // caption: "mg/dL",
                              icon: RotatedBox(
                                quarterTurns: 3,
                                child: Icon(
                                  FontAwesomeIcons.syringe,
                                  color: Colors.white,
                                ),
                              ),
                              bgImage: 'images/HomeBG/Pedometer.jpeg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/workouts');
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image(
                            fit: BoxFit.cover,
                            width: double.infinity,
                            image: AssetImage(
                              'images/workout.jpg',
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 10,
                          child: Text(
                            "Workout",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: theme.headline4!.fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
