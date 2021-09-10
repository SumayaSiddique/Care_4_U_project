import 'package:care_4_u_project/Datamodel/WorkoutModels/CircuitModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WomenCircuitWorkouts extends StatelessWidget {
  final CircuitModel circuitModel;
  WomenCircuitWorkouts({
    required this.circuitModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(circuitModel.name!),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: circuitModel.exercises!.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                // Get.bottomSheet(
                //   WorkoutDetailBottomSheet(
                //     workout: data[index],
                //   ),
                //   isScrollControlled: true,
                // );
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
                            circuitModel.exercises![index].title!.toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            circuitModel.exercises![index].description!
                                    .substring(0, 20) +
                                '....',
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
      ),
    );
  }
}
