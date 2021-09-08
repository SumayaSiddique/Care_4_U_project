import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:care_4_u_project/Datamodel/BloodPressureModel/BloodPressureModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BloodPressureService {
  static Future getBpData(
      // DateTime dateAdded,
      // int sysValue,
      // int diaValue,
      ) async {
    final _collectionReference = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('pressures')
        .snapshots();
    StreamBuilder<QuerySnapshot>(
      stream: _collectionReference,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        if (snapshot.connectionState == ConnectionState.active) {
          snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            print(data['sysValue']);
            return Text(data['sysValue']);
          });
        }
        return CircularProgressIndicator();
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
