import 'package:care_4_u_project/Datamodel/WorkoutModels/WomenExerciseModels/Advanced/WomenAdvancedModel.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/WomenExerciseModels/Beginner/WomenBeginnerModel_BAK.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/WomenExerciseModels/Intermediate/WomenIntermediateModel_BAK.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/Women/WomenProgramSelection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WomenLevelSelection extends StatefulWidget {
  const WomenLevelSelection({Key? key}) : super(key: key);

  @override
  _WomenLevelSelectionState createState() => _WomenLevelSelectionState();
}

class _WomenLevelSelectionState extends State<WomenLevelSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level Selection"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Get.to(
                WomenProgramSelection(
                  program: womenBeginnerPrograms,
                  title: "Beginner Programs",
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('img/Level/WomenBeginner.jpg'),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        "Beginner",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              Theme.of(context).textTheme.headline4!.fontSize,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(
                WomenProgramSelection(
                  program: womenIntermediatePrograms,
                  title: "Intermediate Programs",
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('img/Level/WomenIntermediate.jpg'),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        "Intermediate",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              Theme.of(context).textTheme.headline4!.fontSize,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(
                WomenProgramSelection(
                  program: womenAdvancedPrograms,
                  title: "Advanced Programs",
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('img/Level/WomenAdvanced.jpg'),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        "Advanced",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              Theme.of(context).textTheme.headline4!.fontSize,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
