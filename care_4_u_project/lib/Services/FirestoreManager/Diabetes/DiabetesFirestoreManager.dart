import 'package:care_4_u_project/Datamodel/DiabetesModel/DiabetesModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class DiabetesFirestoreManager {
  static void addDiabetes(DiabetesData diabetesData) async {
    final CollectionReference _collectionReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('diabetes');

    _collectionReference.add({
      'date': diabetesData.date,
      'value': diabetesData.value,
    }).then((value) {
      Get.back();
      Get.snackbar(
        'Success',
        'Diabetes data is saved',
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }
}
