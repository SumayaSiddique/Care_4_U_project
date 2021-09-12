import 'package:care_4_u_project/Datamodel/MedicineDatamodel/MedicineDatamodel.dart';
import 'package:care_4_u_project/Screens/Home/modules/HomeLargeCard.dart';
import 'package:care_4_u_project/Screens/Medicine%20Reminder/MedicineReminder.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    final Stream<QuerySnapshot> _medicineCollections = FirebaseFirestore
        .instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('medicines')
        .limit(2)
        .snapshots();

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
                      time: TimeOfDay.now(),
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
                    StreamBuilder<QuerySnapshot>(
                      stream: _medicineCollections,
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Something went wrong');
                        }

                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Text("Loading");
                        }
                        if (snapshot.data!.docs.length == 0) {
                          return Center(
                            child: Container(
                              child: Text(
                                "Your recent medicine will come here",
                                textAlign: TextAlign.center,
                                style: Get.textTheme.headline5,
                              ),
                            ),
                          );
                        } else
                          return ListView(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: snapshot.data!.docs
                                .map((DocumentSnapshot document) {
                              Map<String, dynamic> data =
                                  document.data()! as Map<String, dynamic>;

                              Timestamp timestamp = data['time'];
                              final dateFormat = timestamp.toDate();
                              return MedicineRow(
                                theme: theme,
                                name: "Napa",
                                time: TimeOfDay(
                                  hour: dateFormat.hour,
                                  minute: dateFormat.minute,
                                ),
                              );
                            }).toList(),
                          );
                      },
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

class MedicineRow extends StatelessWidget {
  const MedicineRow({
    Key? key,
    required this.theme,
    required this.name,
    required this.time,
  }) : super(key: key);

  final String name;
  final TimeOfDay time;

  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return Row(
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
              name,
              style: TextStyle(
                fontSize: theme.headline6!.fontSize,
                color: Color(0xff1d617A),
              ),
              // style: theme.headline6!.apply(color: Colors.black),
            ),
          ],
        ),
        Text(
          "${formatTimeOfDay(time)}",
          style: theme.headline6!.apply(
            color: Color(0xff1d617A),
          ),
        ),
      ],
    );
  }
}
