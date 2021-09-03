import 'package:care_4_u_project/Datamodel/User/Usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserSignUp {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('users');
  addUserData(Usermodel usermodel) async {
    await collectionReference.doc(FirebaseAuth.instance.currentUser!.uid).set(
      {
        'name': usermodel.fullName,
        'email': usermodel.email,
        'weight': usermodel.weight,
        'height': usermodel.height,
        'isMale': usermodel.isMale,
        'createdOn': Timestamp.now(),
      },
    );
  }
}
