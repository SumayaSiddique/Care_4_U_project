import 'package:care_4_u_project/Datamodel/MedicineDatamodel/MedicineDatamodel.dart';
import 'package:care_4_u_project/Services/FirestoreManager/MedicineReminder/MedicineReminderFirestoreManager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
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

    final Stream<QuerySnapshot> _medicineCollections = FirebaseFirestore
        .instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('medicines')
        .snapshots();

    return Scaffold(
        backgroundColor: Color(0xffdbefe1),
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
        body: StreamBuilder<QuerySnapshot>(
          stream: _medicineCollections,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;

                Timestamp timestamp = data['time'];
                final dateFormat = timestamp.toDate();

                return MedicineReminderCard(
                  medicineDatamodel: MedicineDatamodel(
                    name: data['name'],
                    time: TimeOfDay(
                        hour: dateFormat.hour, minute: dateFormat.minute),
                    beforeMeal: data['beforeMeal'],
                    notify: data['notify'],
                  ),
                );
              }).toList(),
            );
          },
        )

        // ListView.builder(
        //   itemCount: 3,
        //   itemBuilder: (context, index) {
        //     return MedicineReminderCard(
        //       size: size,
        //       widget: widget,
        //       textTheme: textTheme,
        //       dateTime: DateTime.now().toString(),
        //     );
        //   },
        // ),
        );
  }
}

class MedicineReminderCard extends StatefulWidget {
  const MedicineReminderCard({
    Key? key,
    required this.medicineDatamodel,
  }) : super(key: key);

  final MedicineDatamodel medicineDatamodel;

  @override
  _MedicineReminderCardState createState() => _MedicineReminderCardState();
}

class _MedicineReminderCardState extends State<MedicineReminderCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SafeArea(
        child: Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
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
                // ClipRRect(
                //   // borderRadius: BorderRadius.circular(200),
                //   child: Image(
                //     image: AssetImage("images/medicine.jpg"),
                //     width: Get.width / 2,
                //   ),
                // ),

                // Lottie.asset(
                //   'lottie/medicine.json',
                //   width: Get.width / 3,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        FaIcon(
                          FontAwesomeIcons.pills,
                          color: Color(0xff52b69a),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          widget.medicineDatamodel.name,
                          style: TextStyle(
                            fontSize: Get.textTheme.headline6!.fontSize,
                            color: Color(0xff1d617A),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          FontAwesomeIcons.clock,
                          color: Color(0xff1d617A),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "${formatTimeOfDay(widget.medicineDatamodel.time)}",
                          style: TextStyle(
                            fontSize: Get.textTheme.headline6!.fontSize,
                            color: Color(0xff1d617A),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        if (widget.medicineDatamodel.beforeMeal)
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
                            color: Color(0xff1d617A),
                          ),
                        ),
                        // SizedBox(
                        //   width: 8,
                        // ),
                        if (!widget.medicineDatamodel.beforeMeal)
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Colors.green[400],
                              shape: BoxShape.circle,
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
      ),
    );
  }
}

class MedicineReminderController extends GetxController {
  Rx<TimeOfDay> selectedTime = TimeOfDay.now().obs;
  Rx<String> name = "".obs;
  Rx<bool> beforeMeal = false.obs;
  Rx<bool> notify = false.obs;
}

class AddMedicineBottomSheet extends StatefulWidget {
  @override
  _AddMedicineBottomSheetState createState() => _AddMedicineBottomSheetState();
}

class _AddMedicineBottomSheetState extends State<AddMedicineBottomSheet> {
  final _addMedicineKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final MedicineReminderController mdcController =
        Get.put(MedicineReminderController());

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
        SizedBox(
          height: 10,
        ),
        Text(
          "Add a Medicine",
          style: Get.textTheme.headline5,
        ),
        Obx(
          () => Form(
            key: _addMedicineKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: TextField(
                      onChanged: (value) => mdcController.name.value = value,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.grey[200],
                        filled: true,
                        hintText: "Medicine Name",
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.utensils,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Before meal?",
                        style: Get.textTheme.headline6,
                      ),
                      Spacer(),
                      CupertinoSwitch(
                        value: mdcController.beforeMeal.value,
                        onChanged: (value) {
                          mdcController.beforeMeal.value = value;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Notify",
                        style: Get.textTheme.headline6,
                      ),
                      Spacer(),
                      CupertinoSwitch(
                        value: mdcController.notify.value,
                        onChanged: (value) {
                          mdcController.notify.value = value;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select Time",
                        style: Get.textTheme.headline6,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          await _selectTime(
                            context,
                            mdcController,
                          );
                        },
                        child: Text(
                          "${formatTimeOfDay(mdcController.selectedTime.value)}",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff1d617A),
                      ),
                      onPressed: () async {
                        final medicineDatamodel = MedicineDatamodel(
                          name: mdcController.name.value,
                          time: mdcController.selectedTime.value,
                          beforeMeal: mdcController.beforeMeal.value,
                          notify: mdcController.notify.value,
                        );
                        print(medicineDatamodel.name +
                            medicineDatamodel.beforeMeal.toString() +
                            medicineDatamodel.notify.toString() +
                            medicineDatamodel.time.toString());

                        MedicineReminderFirestoreManager.addMedicine(
                            medicineDatamodel);
                      },
                      child: Text("Add Medicine Reminder"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<Null> _selectTime(BuildContext context,
      MedicineReminderController medicineReminderController) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: medicineReminderController.selectedTime.value,
    );
    if (picked != null) {
      medicineReminderController.selectedTime.value = picked;
    }
  }
}

String formatTimeOfDay(TimeOfDay tod) {
  final now = new DateTime.now();
  final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
  final format = DateFormat.jm(); //"6:00 AM"
  return format.format(dt);
}
