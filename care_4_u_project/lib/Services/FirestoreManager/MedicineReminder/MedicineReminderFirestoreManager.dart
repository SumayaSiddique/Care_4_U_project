import 'package:care_4_u_project/Datamodel/MedicineDatamodel/MedicineDatamodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class MedicineReminderFirestoreManager {
  static void addMedicine(MedicineDatamodel medicineDatamodel) async {
    DateTime now = new DateTime.now();
    now = new DateTime(now.year, now.month, now.day,
        medicineDatamodel.time.hour, medicineDatamodel.time.minute);

    final CollectionReference _collectionReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('medicines');

    _collectionReference.add({
      'name': medicineDatamodel.name,
      'notify': medicineDatamodel.notify,
      'beforeMeal': medicineDatamodel.beforeMeal,
      'time': Timestamp.fromDate(now),
    }).then((value) {
      Get.back();
      Get.snackbar(
        'Success',
        'Medicine is Saved',
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }
}
