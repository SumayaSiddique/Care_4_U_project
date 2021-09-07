import 'package:care_4_u_project/Datamodel/MedicineDatamodel/MedicineDatamodel.dart';
import 'package:care_4_u_project/Services/Notifications/NotificationAPI.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:intl/intl.dart';

class MedicineReminder extends StatefulWidget {
  final MedicineDatamodel medicineDatamodel;
  const MedicineReminder({
    Key? key,
    required this.medicineDatamodel,
  }) : super(key: key);

  @override
  _MedicineReminderState createState() => _MedicineReminderState();
}

class _MedicineReminderState extends State<MedicineReminder> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    String dateTime =
        DateFormat('hh:mm a').format(widget.medicineDatamodel.time);
    return Scaffold(
      appBar: AppBar(
        title: Text("Medicine Reminder"),
        actions: [
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  height: size.height / 1.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                  child: AddMedicineBottomSheet(),
                ),
                isScrollControlled: true,
                // backgroundColor: Colors.black,
              );
            },
            icon: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return MedicineReminderCard(
            size: size,
            widget: widget,
            textTheme: textTheme,
            dateTime: dateTime,
          );
        },
      ),
    );
  }
}

class MedicineReminderCard extends StatefulWidget {
  const MedicineReminderCard({
    Key? key,
    required this.size,
    required this.widget,
    required this.textTheme,
    required this.dateTime,
  }) : super(key: key);

  final Size size;
  final MedicineReminder widget;
  final TextTheme textTheme;
  final String dateTime;

  @override
  _MedicineReminderCardState createState() => _MedicineReminderCardState();
}

class _MedicineReminderCardState extends State<MedicineReminderCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: Offset(4, 4),
              blurRadius: 40,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Lottie.asset(
                'lottie/medicine.json',
                width: widget.size.width / 3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.widget.medicineDatamodel.name,
                    style: TextStyle(
                      fontSize: widget.textTheme.headline6!.fontSize,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.clock,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("${widget.dateTime}"),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: Colors.green[400],
                          shape: BoxShape.circle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Icon(
                          FontAwesomeIcons.utensils,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddMedicineBottomSheet extends StatefulWidget {
  @override
  _AddMedicineBottomSheetState createState() => _AddMedicineBottomSheetState();
}

class _AddMedicineBottomSheetState extends State<AddMedicineBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 6,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            final notificationManager = NotificationManager();
            await notificationManager.displayNotification(
              "Water Reminder",
              "Feeling thirsty?",
            );
          },
          child: Text("Instant Notification!"),
        ),
        ElevatedButton(
          onPressed: () async {
            // final notificationManager = NotificationManager();
            // await notificationManager.scheduleNotification('Hmmmmm',
            //     "Why should you wait 5 seconds if you can drink water now?");
          },
          child: Text("5 Second delay notification"),
        ),
      ],
    );
  }
}
