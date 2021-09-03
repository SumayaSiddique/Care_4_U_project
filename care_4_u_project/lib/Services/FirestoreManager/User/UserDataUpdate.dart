import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserDataUpdate {
  static updateUserData(double height, double weight) async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('users');
    await collectionReference.doc(FirebaseAuth.instance.currentUser!.uid).set(
      {
        'weight': weight,
        'height': height,
      },
    );
  }
}
