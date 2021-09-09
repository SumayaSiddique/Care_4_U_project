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
    Future addBPData(DateTime date, int sysValue, int diaValue) async {
      return FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('pressures')
          .add({
        'date': date,
        'sysValue': sysValue,
        'diaValue': diaValue,
      });
    }

    final size = MediaQuery.of(context).size;
    // ChartSeriesController? _chartSeriesController;
    final _formKey = GlobalKey<FormState>();
    int? inputSysValue;
    int? inputDiaValue;
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
      backgroundColor: Color.fromRGBO(210, 246, 254, 1),
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
          spacing: 0.4,
          width: 0.8,
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
              barrierDismissible: true,
            );
          },
          xValueMapper: (BloodPressureData bpData, _) => bpData.date,
          highValueMapper: (BloodPressureData bpData, _) => bpData.sysValue,
          lowValueMapper: (BloodPressureData bpData, _) => bpData.diaValue,
          dataLabelSettings: DataLabelSettings(isVisible: true),
          // enableTooltip: true,
          // onRendererCreated: (ChartSeriesController controller) {
          //   _chartSeriesController = controller;
          // },
        ),
      ],
      primaryXAxis: DateTimeAxis(
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        enableAutoIntervalOnZooming: true,
        dateFormat: DateFormat.Md(),
        intervalType: DateTimeIntervalType.days,
        majorGridLines: const MajorGridLines(width: 0),
        // desiredIntervals: 31,
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
