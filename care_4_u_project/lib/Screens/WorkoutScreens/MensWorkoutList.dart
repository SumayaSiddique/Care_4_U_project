import 'package:care_4_u_project/Datamodel/WorkoutModels/Level.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/MenExerciseModel.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/MenModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class MensWorkoutList extends StatelessWidget {
  final Level level;
  const MensWorkoutList({
    Key? key,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    var abData = level.name == 'Beginner'
        ? beginnerAbs
        : level.name == 'Advanced'
            ? advancedAbs
            : intermediateAbs;
    var armData = level.name == 'Beginner'
        ? beginnerArm
        : level.name == 'Intermediate'
            ? intermediateArm
            : advancedArm;
    var chestData = level.name == 'Beginner'
        ? beginnerChest
        : level.name == 'Intermediate'
            ? intermediateChest
            : advancedChest;
    var legData = level.name == 'Beginner'
        ? beginnerLeg
        : level.name == 'Intermediate'
            ? intermediateLeg
            : advancedLeg;
    var shoulderData = level.name == 'Beginner'
        ? beginnerShoulder
        : level.name == 'Intermediate'
            ? intermediateShoulder
            : advancedShoulder;
    return Scaffold(
      appBar: AppBar(
        title: Text(level.name!),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '${level.name} Ab Workouts',
                    style: TextStyle(
                      fontSize: Get.textTheme.headline6!.fontSize,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: WorkoutList(data: abData),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '${level.name} Arm Workouts',
                    style: TextStyle(
                      fontSize: Get.textTheme.headline6!.fontSize,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: WorkoutList(data: armData),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '${level.name} Chest Workouts',
                    style: TextStyle(
                      fontSize: Get.textTheme.headline6!.fontSize,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: WorkoutList(data: chestData),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '${level.name} Leg Workouts',
                    style: TextStyle(
                      fontSize: Get.textTheme.headline6!.fontSize,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: WorkoutList(data: legData),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '${level.name} Shoulder Workouts',
                    style: TextStyle(
                      fontSize: Get.textTheme.headline6!.fontSize,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: WorkoutList(data: shoulderData),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WorkoutDetailBottomSheet extends StatelessWidget {
  final MenExerciseModel workout;
  const WorkoutDetailBottomSheet({
    Key? key,
    required this.workout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0),
              topRight: Radius.circular(18.0),
            ),
            child: Image(
              image: AssetImage(workout.image!),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Center(
              child: Text(
                workout.title!.toUpperCase(),
                style: TextStyle(
                  fontSize: Get.textTheme.headline5!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Duration: ' + workout.time!,
              style: TextStyle(
                fontSize: Get.textTheme.headline6!.fontSize,
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              workout.description!,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: Get.textTheme.headline6!.fontSize,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class WorkoutList extends StatelessWidget {
  final List<MenExerciseModel> data;
  const WorkoutList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
          child: GestureDetector(
            onTap: () {
              Get.bottomSheet(
                WorkoutDetailBottomSheet(
                  workout: data[index],
                ),
                isScrollControlled: true,
              );
            },
            child: Container(
              height: 160,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Lottie.asset(
                      'lottie/men-exercise.json',
                      width: Get.width / 5,
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data[index].title!.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          data[index].description!.substring(0, 20) + '....',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.grey[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: Offset(4, 4),
                    blurRadius: 8.0,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
