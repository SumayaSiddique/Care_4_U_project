import 'package:care_4_u_project/Datamodel/BloodPressureModel/BloodPressureModel.dart';
import 'package:care_4_u_project/Services/FirestoreManager/Pressure/PressureFirestoreManager.dart';
import 'dart:typed_data';
// import 'package:care_4_u_project/Services/PdfApi/pdf_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';

class BloodPressureDetailsView extends StatefulWidget {
  const BloodPressureDetailsView({Key? key}) : super(key: key);

  @override
  _BloodPressureDetailsViewState createState() =>
      _BloodPressureDetailsViewState();
}

class _BloodPressureDetailsViewState extends State<BloodPressureDetailsView> {
  // late List<BloodPressureData> _chartData;
  ScreenshotController screenshotController = ScreenshotController();
  final Stream<QuerySnapshot<Map<String, dynamic>>> _collectionReference =
      FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('pressures')
          .orderBy('date')
          .snapshots();
  List<BloodPressureData> bloodPressureData = [];

  @override
  Widget build(BuildContext context) {
    // ChartSeriesController? _chartSeriesController;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Blood Pressure',
      //     style: TextStyle(),
      //   ),
      //   backgroundColor: Color.fromRGBO(155, 229, 224, 0.5),
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back_ios),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: _collectionReference,
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.hasError) {
            return Text("Something went wrong");
          }
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          if (snapshot.connectionState == ConnectionState.active) {
            bloodPressureData = snapshot.data!.docs.map(
              (QueryDocumentSnapshot<Map<String, dynamic>>
                  queryDocumentSnapshot) {
                return BloodPressureData(
                  date: queryDocumentSnapshot.data()['date'].toDate(),
                  sysValue: queryDocumentSnapshot.data()['sysValue'],
                  diaValue: queryDocumentSnapshot.data()['diaValue'],
                );
              },
            ).toList();
            return makeChart();
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }

  makeChart() {
    final size = MediaQuery.of(context).size;
    final _formKeyPressure = GlobalKey<FormState>();
    int? inputDia;
    int? inputSys;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 100),
        Row(
          children: [
            SizedBox(
              width: 16.0,
            ),
            Padding(
              padding: EdgeInsets.only(right: Get.width / 35),
              child: Screenshot(
                controller: screenshotController,
                child: Text(
                  "Blood Pressure Chart",
                  style: TextStyle(
                      fontSize: Get.textTheme.headline4!.fontSize,
                      color: Color(0xff1d617A),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                // screenshotController.capture().then((Uint8List? image) {
                //   saveImage(image!);
                // }).catchError(
                //   (onError) {
                //     print(onError);
                //   },
                // );
              },
              icon: Icon(
                Icons.picture_as_pdf,
                color: Color(0xff1d617A),
              ),
            ),
          ],
        ),
        Spacer(),
        SfCartesianChart(
          plotAreaBorderColor: Colors.transparent,
          borderWidth: 0.1,
          enableAxisAnimation: true,
          zoomPanBehavior:
              ZoomPanBehavior(enablePanning: true, enablePinching: true),
          legend: Legend(
            isVisible: false,
            position: LegendPosition.top,
            alignment: ChartAlignment.center,
          ),
          series: <RangeColumnSeries>[
            RangeColumnSeries<BloodPressureData, DateTime>(
              borderRadius: BorderRadius.circular(4),
              // color: Color(0xff1d617A),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff9FACE6), Color(0xff74EBD5)],
              ),
              name: '',
              dataSource: bloodPressureData,
              xValueMapper: (BloodPressureData bloodPressureData, _) =>
                  bloodPressureData.date,
              highValueMapper: (BloodPressureData bloodPressureData, _) =>
                  bloodPressureData.sysValue,
              lowValueMapper: (BloodPressureData bloodPressureData, _) =>
                  bloodPressureData.diaValue,
              dataLabelSettings: DataLabelSettings(
                isVisible: true,
                labelPosition: ChartDataLabelPosition.outside,
              ),
              onPointTap: (ChartPointDetails details) {
                int? index = details.pointIndex;
                Get.defaultDialog(
                  title: 'BP Value',
                  titleStyle: TextStyle(fontSize: 24),
                  content: Column(
                    children: [
                      Text(
                          'Recorded On: ${details.dataPoints![index!.toInt()].x}'),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Systolic/Diastolic: ${details.dataPoints![index.toInt()].high}/${details.dataPoints![index.toInt()].low}',
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
          primaryXAxis: DateTimeAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            majorGridLines: const MajorGridLines(width: 0),
            dateFormat: DateFormat.Md(),
            intervalType: DateTimeIntervalType.days,
            desiredIntervals: 7,
            visibleMinimum: bloodPressureData[0].date,
            visibleMaximum:
                bloodPressureData[bloodPressureData.length - 1].date,
          ),
          primaryYAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            labelFormat: '{value}',
            majorGridLines: const MajorGridLines(width: 1.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: size.width / 5,
            left: size.width / 5,
            top: size.height * 0.075,
            bottom: size.height * 0.075,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff1d617A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            ),
            onPressed: () {
              Get.bottomSheet(
                SingleChildScrollView(
                  child: Container(
                    height: size.height * 0.575,
                    child: Form(
                      key: _formKeyPressure,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.025),
                            child: Text(
                              'Blood Pressure',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.025,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.add),
                                hintText: 'Add your systolic value here',
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black54, width: 1.0),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter a value' + ' for systolic'
                                  : null,
                              onChanged: (value) {
                                setState(() {
                                  inputSys = int.parse(value);
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.add),
                                hintText: 'Add your diastolic value here',
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black54, width: 1.0),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter a value' + ' for diastolic'
                                  : null,
                              onChanged: (value) {
                                setState(() {
                                  inputDia = int.parse(value);
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: ElevatedButton(
                              onPressed: () async {
                                if (_formKeyPressure.currentState!.validate()) {
                                  PressureFirestoreManager.addDiabetes(
                                    BloodPressureData(
                                        date: DateTime.now(),
                                        sysValue: inputSys!,
                                        diaValue: inputDia!),
                                  );
                                }
                              },
                              child: Text(
                                'Add BP Data',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xff1d617A)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                barrierColor: Colors.transparent,
                backgroundColor: Color(0xffdbefe1),
                isDismissible: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                      color: Color(0xffdbefe1),
                      style: BorderStyle.solid,
                      width: 2.0),
                ),
              );
            },
            child: Text(
              'Add Blood Pressure Value',
              style: TextStyle(
                fontFamily: "SF Pro Rounded",
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
