import 'package:care_4_u_project/Datamodel/WaterIntake/WaterIntakeModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WaterIntakeManager {
  static void updateGoal(int goal) async {
    final CollectionReference _collectionReference =
        FirebaseFirestore.instance.collection('users');
    _collectionReference.doc(FirebaseAuth.instance.currentUser!.uid).update({
      'drankOn': Timestamp.now(),
      'goal': goal,
    });
  }

  static void addWater() async {
    final CollectionReference _collectionReference =
        FirebaseFirestore.instance.collection('users');
    _collectionReference
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({'drankOn': Timestamp.now(), 'drank': FieldValue.increment(1)});
  }

  static void resetWater() async {
    final CollectionReference _collectionReference =
        FirebaseFirestore.instance.collection('users');
    _collectionReference
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({'drankOn': Timestamp.now(), 'drank': 1, 'goal': 1});
  }

  static Future<WaterIntakeModel> getWaterDrankData() async {
    final CollectionReference _collectionReference =
        FirebaseFirestore.instance.collection('users');
    DocumentSnapshot<Object?> documentSnapshot = await _collectionReference
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    Map<String, dynamic> data =
        documentSnapshot.data()! as Map<String, dynamic>;
    return WaterIntakeModel(
        dailyGoal: data['goal'],
        numberOfGlasses: data['drank'],
        timestamp: data['drankOn']);
  }
}
