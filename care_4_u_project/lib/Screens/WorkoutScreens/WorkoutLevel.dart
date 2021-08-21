import 'package:care_4_u_project/Datamodel/WorkoutModels/Category.dart';
import 'package:care_4_u_project/Datamodel/WorkoutModels/Level.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/WorkoutList.dart';
import 'package:flutter/material.dart';

class WorkOutLevel extends StatelessWidget {
  final Category category;
  const WorkOutLevel({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name!),
      ),
      body: LevelsBuilder(
        category: this.category,
      ),
    );
  }
}

class LevelsBuilder extends StatelessWidget {
  final Category category;
  const LevelsBuilder({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Level> chosenLevel;
    if (category.name == "Men") {
      chosenLevel = levels;
    } else if (category.name == "Women") {
      chosenLevel = womenLevels;
    } else {
      chosenLevel = yogaLevels;
    }

    return ListView.builder(
      shrinkWrap: true,
      itemCount: chosenLevel.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WorkoutList(
                  level: chosenLevel[index],
                ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(chosenLevel[index].imgUrl!),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    levels[index].name!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
