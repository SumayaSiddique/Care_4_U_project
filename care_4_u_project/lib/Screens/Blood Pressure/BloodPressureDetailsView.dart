import 'package:care_4_u_project/Datamodel/BloodPressureModel/BloodPressureModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BloodPressureDetailsView extends StatefulWidget {
  const BloodPressureDetailsView({Key? key}) : super(key: key);

  @override
  _BloodPressureDetailsViewState createState() =>
      _BloodPressureDetailsViewState();
}

class _BloodPressureDetailsViewState extends State<BloodPressureDetailsView> {
  // late List<BloodPressureData> _chartData;
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
      appBar: AppBar(
        title: Text(
          'Blood Pressure',
          style: TextStyle(),
        ),
        backgroundColor: Color.fromRGBO(155, 229, 224, 0.5),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Color(0xffdbefe1),
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
    return SfCartesianChart(
      plotAreaBorderColor: Colors.transparent,
      borderWidth: 0.1,
      enableAxisAnimation: true,
      zoomPanBehavior:
          ZoomPanBehavior(enablePanning: true, enablePinching: true),
      legend: Legend(
        isVisible: true,
        position: LegendPosition.top,
        alignment: ChartAlignment.center,
      ),
      series: <RangeColumnSeries>[
        RangeColumnSeries<BloodPressureData, DateTime>(
          color: Colors.red,
          // spacing: 0.4,
          // width: 0.8,
          name: 'Blood Pressure chart',
          dataSource: bloodPressureData,
          onPointTap: (ChartPointDetails details) {
            int? index = details.pointIndex;
            Get.defaultDialog(
              title: 'BP Value',
              titleStyle: TextStyle(fontSize: 24),
              content: Column(
                children: [
                  Text('Recorded On: ${details.dataPoints![index!.toInt()].x}'),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Systolic/Diastolic: ${details.dataPoints![index.toInt()].high}/${details.dataPoints![index.toInt()].low}',
                  ),
                ],
              ),
            ],
            primaryXAxis: DateTimeAxis(
              edgeLabelPlacement: EdgeLabelPlacement.shift,
              majorGridLines: const MajorGridLines(width: 0),
              visibleMinimum:
                  bloodPressureData[bloodPressureData.length - 3].date,
              visibleMaximum:
                  bloodPressureData[bloodPressureData.length - 1].date,
            ),
            primaryYAxis: NumericAxis(
              edgeLabelPlacement: EdgeLabelPlacement.shift,
              labelFormat: '{value}',
              majorGridLines: const MajorGridLines(width: 0),
            ),
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
              primary: Colors.lightGreenAccent[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            ),
            onPressed: () {}
            //   Get.bottomSheet(
            //       Container(
            //         height: size.height * 0.375,
            //         child: Form(
            //           key: _formKey,
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.stretch,
            //             mainAxisSize: MainAxisSize.min,
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Padding(
            //                 padding: EdgeInsets.symmetric(
            //                     vertical: size.height * 0.025),
            //                 child: Text(
            //                   'Add Diabetes',
            //                   textAlign: TextAlign.center,
            //                   style: TextStyle(
            //                       fontSize: 24.0,
            //                       fontWeight: FontWeight.w900,
            //                       color: Colors.black54),
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: size.height * 0.025,
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.all(12.0),
            //                 child: TextFormField(
            //                   keyboardType: TextInputType.number,
            //                   maxLength: 5,
            //                   decoration: InputDecoration(
            //                     prefixIcon: Icon(Icons.add),
            //                     hintText: 'Add your blood sugar value here',
            //                     fillColor: Colors.white38,
            //                     filled: true,
            //                     enabledBorder: OutlineInputBorder(
            //                         borderSide: BorderSide(
            //                             color: Colors.black54, width: 1.0),
            //                         borderRadius: BorderRadius.circular(25.0)),
            //                   ),
            //                   validator: (value) => value!.isEmpty
            //                       ? 'Please enter a value' + ' for diabetes'
            //                       : null,
            //                   onChanged: (value) {
            //                     setState(() {
            //                       inputValue = double.parse(value);
            //                     });
            //                   },
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.all(25.0),
            //                 child: ElevatedButton(
            //                   onPressed: () async {
            //                     if (_formKeyDiabetes.currentState!.validate()) {
            //                       DiabetesFirestoreManager.addDiabetes(
            //                         DiabetesData(
            //                             date: DateTime.now(),
            //                             value: inputValue!),
            //                       );
            //                       print(inputValue);
            //                       // Navigator.of(context).pop();
            //                     }
            //                   },
            //                   child: Text(
            //                     'Add BP Value',
            //                     style: TextStyle(
            //                         fontSize: 18,
            //                         fontWeight: FontWeight.w100,
            //                         color: Colors.black54),
            //                   ),
            //                   style: ButtonStyle(
            //                     backgroundColor: MaterialStateColor.resolveWith(
            //                         (states) => Colors.lightGreenAccent),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       barrierColor: Colors.transparent,
            //       backgroundColor: Colors.lightGreenAccent[100],
            //       isDismissible: true,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(25.0),
            //           side: BorderSide(
            //               color: Colors.white,
            //               style: BorderStyle.solid,
            //               width: 2.0)));
            //
            // },
            ,
            child: Text(
              'Add Blood Pressure Value',
              style: TextStyle(
                fontFamily: "SF Pro Rounded",
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ],
      primaryXAxis: DateTimeAxis(
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        enableAutoIntervalOnZooming: true,
        dateFormat: DateFormat.Hm(),
        intervalType: DateTimeIntervalType.hours,
        majorGridLines: const MajorGridLines(width: 0),
        desiredIntervals: 24,
        visibleMinimum: bloodPressureData[bloodPressureData.length - 2].date,
        visibleMaximum: bloodPressureData[bloodPressureData.length - 1].date,
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
        majorGridLines: const MajorGridLines(width: 1),
      ),
    );
  }
}
