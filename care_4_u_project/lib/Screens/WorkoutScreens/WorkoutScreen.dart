import 'package:care_4_u_project/Datamodel/WorkoutModels/Category.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/Women/WomenLevelSelection.dart';
import 'package:care_4_u_project/Screens/WorkoutScreens/WorkoutLevel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffdbefe1),
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
                  "Choose Category",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.2,
                    color: Color(0xff1d617A),
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
                        if (category.name == 'Women') {
                          Get.to(
                            () => WomenLevelSelection(),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WorkOutLevel(
                                category: category,
                              ),
                            ),
                          );
                        }
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
      ),
    );
  }
}
