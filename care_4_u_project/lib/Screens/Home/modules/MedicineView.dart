import 'package:care_4_u_project/Datamodel/MedicineDatamodel/MedicineDatamodel.dart';
import 'package:care_4_u_project/Screens/Home/modules/HomeLargeCard.dart';
import 'package:care_4_u_project/Screens/Medicine%20Reminder/MedicineReminder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MedicineView extends StatelessWidget {
  const MedicineView({
    Key? key,
    required this.size,
    required this.theme,
  }) : super(key: key);

  final Size size;
  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        // vertical: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Get.to(
                  () => MedicineReminder(
                    medicineDatamodel: MedicineDatamodel(
                      name: 'Lexapro 150mg',
                      time: DateTime.now(),
                      beforeMeal: true,
                      notify: true,
                    ),
                  ),
                );
              },
              child: HomeLargeCard(
                size: size,
                theme: theme,
                title: "Medicine Reminder",
                subtitle: 'Today',
                icon: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Color(0xffdbefe1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.medication,
                    color: Colors.redAccent,
                  ),
                ),
                image: 'images/HomeBG/medicine.jpeg',
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.pills,
                              color: Color(0xff1d617A),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Ebasten',
                              style: TextStyle(
                                fontSize: theme.headline6!.fontSize,
                                color: Color(0xff1d617A),
                              ),
                              // style: theme.headline6!.apply(color: Colors.black),
                            ),
                          ],
                        ),
                        Text(
                          '9:00PM',
                          style: theme.headline6!.apply(
                            color: Color(0xff1d617A),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.pills,
                              color: Color(0xff1d617A),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Reversair',
                              style: theme.headline6!.apply(
                                color: Color(0xff1d617A),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '9:00PM',
                          style: theme.headline6!.apply(
                            color: Color(0xff1d617A),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
