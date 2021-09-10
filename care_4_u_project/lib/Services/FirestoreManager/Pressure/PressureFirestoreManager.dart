import 'package:care_4_u_project/Datamodel/BloodPressureModel/BloodPressureModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class PressureFirestoreManager {
  static void addDiabetes(BloodPressureData bpData) async {
    final CollectionReference _collectionReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('pressures');

    _collectionReference.add(
      {
        'date': bpData.date,
        'sysValue': bpData.sysValue,
        'diaValue': bpData.diaValue
      },
    ).then(
      (value) {
        Get.back();
        Get.snackbar(
          'Success',
          'Pressure data is saved',
          snackPosition: SnackPosition.BOTTOM,
        );
      },
    );
  }
}
