import 'package:care_4_u_project/Datamodel/WorkoutModels/ProgramModel.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/Women/WomenCircuitSelection.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WomenProgramSelection extends StatelessWidget {
  final List<Program> program;
  final String title;
  WomenProgramSelection({
    required this.program,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
                options: CarouselOptions(
                  height: Get.height / 1.3,
                  aspectRatio: 16 / 10,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: program.length,
                itemBuilder:
                    (BuildContext context, int index, int pageViewIndex) {
                  final selectedProgram = program[index];
                  return GestureDetector(
                    onTap: () {
                      Get.to(WomenCircuitSelection(program: selectedProgram));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: Image(
                              // width: 200,
                              height: Get.height - 180,
                              fit: BoxFit.cover,
                              image: AssetImage('img/program${index + 1}.jpg'),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 30,
                            child: Text(
                              program[index].name!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .fontSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
