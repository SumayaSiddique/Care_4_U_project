import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserSignUp {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('users');
  addUserData(String name, double weight, double height) async {
    await collectionReference.doc(FirebaseAuth.instance.currentUser!.uid).set(
      {
        'name': name,
        'weight': weight,
        'height': height,
        'createdOn': Timestamp.now(),
      },
    );
  }
}
