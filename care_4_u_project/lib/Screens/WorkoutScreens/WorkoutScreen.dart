import 'package:care_4_u_project/Datamodel/WorkoutModels/Category.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/WorkoutLevel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Workout"),
        // ),
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Text(
                "Choose your workout!",
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Flexible(
            flex: 12,
            child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: size.height / 1.3,
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
                itemCount: categories.length,
                itemBuilder:
                    (BuildContext context, int index, int pageViewIndex) {
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
                              height: size.height - 180,
                              fit: BoxFit.cover,
                              image: AssetImage(categories[index].imgUrl!),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 30,
                            child: Text(
                              categories[index].name!,
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
          ),
        ],
      ),
    ));
  }
}





// ListView.builder(
        //   itemCount: categories.length,
        //   itemBuilder: (context, index) {
        //     final category = categories[index];
        //     return GestureDetector(
        //       onTap: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => WorkOutLevel(
        //               category: category,
        //             ),
        //           ),
        //         );
        //       },
        //       child: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Stack(
        //           children: [
        //             ClipRRect(
        //               borderRadius: BorderRadius.circular(18),
        //               child: Image(
        //                 // width: 200,
        //                 image: AssetImage(categories[index].imgUrl!),
        //               ),
        //             ),
        //             Positioned(
        //               left: 10,
        //               bottom: 20,
        //               child: Text(
        //                 categories[index].name!,
        //                 style: TextStyle(
        //                   color: Colors.white,
        //                   fontSize:
        //                       Theme.of(context).textTheme.headline3!.fontSize,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     );
        //   },
        // ),