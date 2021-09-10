import 'package:care_4_u_project/Datamodel/WorkoutModels/ProgramModel.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/Women/WomenCircuitWorkouts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WomenCircuitSelection extends StatelessWidget {
  final Program program;
  WomenCircuitSelection({
    required this.program,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(program.name!),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: program.circuitModel!.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Get.to(
              WomenCircuitWorkouts(
                circuitModel: program.circuitModel![index],
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
                      image: AssetImage('img/circuit/circuit${index + 1}.jpg'),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      program.circuitModel![index].name!,
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
          );
        },
      ),
    );
  }
}
