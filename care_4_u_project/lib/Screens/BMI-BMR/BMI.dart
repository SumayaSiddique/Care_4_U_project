import 'package:care_4_u_project/Datamodel/User/Usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  late Usermodel usermodel;
  final Stream<DocumentSnapshot<Map<String, dynamic>>> _userDocument =
      FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .snapshots();
  @override
  build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        // stream: _userDocument,
        stream: _userDocument,
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("Something went wrong");
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return Text("Document does not exist");
          }

          if (snapshot.connectionState == ConnectionState.active) {
            Usermodel usermodel = Usermodel(
              fullName: snapshot.data!.get('name'),
              age: snapshot.data!.get('age'),
              email: snapshot.data!.get('email'),
              password: "",
              height: snapshot.data!.get('height') / 1.0,
              weight: snapshot.data!.get('weight') / 1.0,
              isMale: snapshot.data!.get('isMale'),
            );
            final bmiValue =
                (usermodel.weight / usermodel.height / usermodel.height) *
                    10000;
            this.usermodel = usermodel;
            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 8.0),
                        child: Text(
                          'Your BMI Result',
                          style: TextStyle(
                            fontSize: Get.textTheme.headline5!.fontSize,
                          ),
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: Container(
                          color: Colors.white70,
                          width: Get.width / 1.5,
                          height: Get.height / 20.0,
                          child: Center(
                            child: Text(
                              bmiValue < 18.5
                                  ? 'You are underweight.'
                                  : bmiValue <= 24.9
                                      ? 'Your weight is normal.'
                                      : bmiValue >= 25.0 && bmiValue <= 29.9
                                          ? 'You are overweight'
                                          : 'You are obese',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: Get.textTheme.headline6!.fontSize,
                                color: bmiValue < 18.5
                                    ? Colors.blue
                                    : bmiValue <= 24.9
                                        ? Colors.green
                                        : bmiValue >= 25.0 && bmiValue <= 29.9
                                            ? Colors.yellow
                                            : Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Center(
                        child: Container(
                          width: Get.width / 1.15,
                          child: SfLinearGauge(
                            minimum: 13.5,
                            maximum: 34.5,
                            showAxisTrack: false,
                            ranges: <LinearGaugeRange>[
                              LinearGaugeRange(
                                endValue: 18.4,
                                color: Colors.lightBlue,
                                position: LinearElementPosition.inside,
                                startWidth: 10.0,
                                endWidth: 20.0,
                                edgeStyle: LinearEdgeStyle.startCurve,
                              ),
                              LinearGaugeRange(
                                startValue: 18.5,
                                endValue: 24.9,
                                color: Colors.green,
                                position: LinearElementPosition.inside,
                                startWidth: 20.0,
                                endWidth: 20.0,
                              ),
                              LinearGaugeRange(
                                startValue: 25.0,
                                endValue: 29.9,
                                color: Colors.yellow[700],
                                position: LinearElementPosition.inside,
                                startWidth: 20.0,
                                endWidth: 20.0,
                              ),
                              LinearGaugeRange(
                                startValue: 30.0,
                                endValue: 34.9,
                                color: Colors.red,
                                position: LinearElementPosition.inside,
                                startWidth: 20.0,
                                endWidth: 10.0,
                                edgeStyle: LinearEdgeStyle.endCurve,
                              ),
                            ],
                            showLabels: false,
                            markerPointers: [
                              LinearWidgetPointer(
                                value: bmiValue,
                                child: Container(
                                  height: 30,
                                  width: 5,
                                  decoration: BoxDecoration(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Center(
                        child: Text(
                          'Your BMI is ${bmiValue.toPrecision(1)}',
                          style: TextStyle(
                            fontSize: Get.textTheme.headline6!.fontSize,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            );
          }
          return CircularProgressIndicator();
        });
  }
}
