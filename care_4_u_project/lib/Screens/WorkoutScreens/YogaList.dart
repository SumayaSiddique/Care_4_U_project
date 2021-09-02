import 'package:care_4_u_project/Datamodel/WorkoutModels/Level.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/UniqueExercises/AllData.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/Yoga/YogaModel.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class YogaList extends StatelessWidget {
  final Level level;
  const YogaList({Key? key, required this.level}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = level.name == 'Beginner'
        ? beginnerYogaModelList
        : advancedYogaModelList;
    print(level.name);
    return Scaffold(
      appBar: AppBar(
        title: Text(level.name!),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                Get.bottomSheet(
                  YogaDetailBottomSheet(
                    yoga: data[index],
                  ),
                  isScrollControlled: true,
                  // backgroundColor: Colors.black,
                );
              },
              child: Container(
                height: 160,
                child: Row(
                  children: [
                    Lottie.asset(
                      'lottie/yoga-beg.json',
                      width: Get.width / 5,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data[index].title!,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            data[index].description!.substring(0, 50) + '....',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: Offset(4, 4),
                        blurRadius: 8.0,
                      )
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}

class YogaDetailBottomSheet extends StatelessWidget {
  final ExerciseModel yoga;
  const YogaDetailBottomSheet({
    Key? key,
    required this.yoga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 1.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18.0),
                topRight: Radius.circular(18.0),
              ),
              child: Image(
                image: AssetImage(yoga.image!),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Center(
                child: Text(
                  yoga.title!,
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
                'Duration: ' + yoga.time!,
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
                yoga.description!,
                textAlign: TextAlign.justify,
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
      ),
    );
  }
}
