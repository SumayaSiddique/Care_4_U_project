import 'package:care_4_u_project/Datamodel/WorkoutModels/Category.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/WorkoutLevel.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workout"),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WorkOutLevel(
                    category: category,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image(
                      // width: 200,
                      image: AssetImage(categories[index].imgUrl!),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 20,
                    child: Text(
                      categories[index].name!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            Theme.of(context).textTheme.headline3!.fontSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
