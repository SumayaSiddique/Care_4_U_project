import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:care_4_u_project/Datamodel/BloodPressureModel/BloodPressureModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class BloodPressureService {
  Future addBPData(DateTime dateAdded, int sysValue, int diaValue) async {
    final _collectionReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('pressure')
        .snapshots();
    StreamBuilder<QuerySnapshot>(
      stream: _collectionReference,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        snapshot.data!.docs.map((DocumentSnapshot documentSnapshot) {
          print(documentSnapshot.data()['sysValue']);
        });
      },
    );
  }

  // List<BloodPressureData> _BPDataListFromSnapshot(QuerySnapshot snapshot) {
  //   return snapshot.docs.map((doc) {
  //     return BloodPressureData(doc.data()!['dateAdded'], doc.data()!['sysValue'],
  //         doc.data()!['diaValue']);
  //   }).toList();
  // }

  // Stream<List<BloodPressureData>> get bpData {
  //   return walletCollection.snapshots().map(_BPDataListFromSnapshot);
  // }
}
