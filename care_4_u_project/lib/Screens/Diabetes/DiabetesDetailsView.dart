import 'package:care_4_u_project/Datamodel/DiabetesModel/DiabetesModel.dart';
// import 'package:care_4_u_project/Screens/Temp.dart';
import 'package:care_4_u_project/Services/PdfApi/pdf_api.dart';
import 'package:care_4_u_project/Services/FirestoreManager/Diabetes/DiabetesFirestoreManager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DiabetesDetailsView extends StatefulWidget {
  const DiabetesDetailsView({
    Key? key,
  }) : super(key: key);

  @override
  _DiabetesDetailsViewState createState() => _DiabetesDetailsViewState();
}

class _DiabetesDetailsViewState extends State<DiabetesDetailsView> {
  late List<DiabetesData> _chartData;
  final Stream<QuerySnapshot<Map<String, dynamic>>> _collectionReference =
      FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('diabetes')
          .orderBy('date')
          .snapshots();
  List<DiabetesData> diabetesData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () async {
                // // Get.to(() => TempScreen());
                // final pdfFile = await PdfApi.generateTable();
                // PdfApi.openFile(pdfFile);
              },
              icon: Icon(Icons.picture_as_pdf),
            ),
          ],
          title: Text(
            'Blood Glucose',
            style: TextStyle(),
          ),
          backgroundColor: Color.fromRGBO(155, 229, 224, 0.5),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )),
      backgroundColor: Color(0xffdbefe1),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: _collectionReference,
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.hasError) {
            return Text("Something went wrong");
          }
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionState.active) {
            diabetesData = snapshot.data!.docs.map(
              (QueryDocumentSnapshot<Map<String, dynamic>>
                  queryDocumentSnapshot) {
                return DiabetesData(
                  date: queryDocumentSnapshot.data()['date'].toDate(),
                  value: queryDocumentSnapshot.data()['value'] / 1.0,
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

  // List<DiabetesData> getChartData() {
  //   final List<DiabetesData> chartData = [
  //     DiabetesData(DateTime(2021, 1, 2, 7, 30), 7.5),
  //     DiabetesData(DateTime(2021, 1, 3, 10, 30), 7.2),
  //     DiabetesData(DateTime(2021, 1, 4, 13, 30), 6.2),
  //     DiabetesData(DateTime(2021, 1, 5, 16, 30), 6.5),
  //     DiabetesData(DateTime(2021, 1, 6, 19, 30), 5.5),
  //     DiabetesData(DateTime(2021, 1, 7, 22, 30), 9.5),
  //   ];
  //   return chartData;
  // }

  makeChart() {
    final size = MediaQuery.of(context).size;
    // ChartSeriesController? _chartSeriesController;
    final _formKeyDiabetes = GlobalKey<FormState>();
    double? inputValue;
    return Column(
      children: [
        Flexible(
          flex: 2,
          child: SfCartesianChart(
            plotAreaBorderColor: Colors.transparent,
            zoomPanBehavior: ZoomPanBehavior(enablePanning: true),
            legend: Legend(
              isVisible: true,
              alignment: ChartAlignment.center,
              position: LegendPosition.top,
            ),
            // tooltipBehavior: _tooltipBehavior,
            enableAxisAnimation: true,
            series: <ChartSeries>[
              FastLineSeries<DiabetesData, DateTime>(
                name: 'Diabetes chart',
                // width: 5.0,
                color: Colors.orange,
                dataSource: diabetesData,
                yValueMapper: (DiabetesData diabetesData, _) =>
                    diabetesData.value,
                xValueMapper: (DiabetesData diabetesData, _) =>
                    diabetesData.date,
                dataLabelSettings: DataLabelSettings(isVisible: true),
                onPointTap: (ChartPointDetails details) {
                  int? index = details.pointIndex;
                  Get.defaultDialog(
                    title: 'Diabetes Value',
                    titleStyle: TextStyle(fontSize: 24),
                    content: Column(
                      children: [
                        Text(
                            'Recorded On: ${details.dataPoints![index!.toInt()].x}'),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Diabetes Value: ${details.dataPoints![index.toInt()].y}',
                        ),
                      ],
                    ),
                    barrierDismissible: true,
                  );
                },
                // enableTooltip: true,
                // onRendererCreated: (ChartSeriesController controller) {
                //   _chartSeriesController = controller;
                // },
              ),
            ],
            primaryXAxis: DateTimeAxis(
              edgeLabelPlacement: EdgeLabelPlacement.shift,
              dateFormat: DateFormat.Hm(),
              intervalType: DateTimeIntervalType.hours,
              majorGridLines: const MajorGridLines(width: 0),
              desiredIntervals: 24,
              visibleMinimum: diabetesData[diabetesData.length - 2].date,
              visibleMaximum: diabetesData[diabetesData.length - 1].date,
            ),
            primaryYAxis: NumericAxis(
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
            onPressed: () {
              Get.bottomSheet(
                  Container(
                    height: size.height * 0.375,
                    child: Form(
                      key: _formKeyDiabetes,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.025),
                            child: Text(
                              'Add Diabetes',
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
                              maxLength: 5,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.add),
                                hintText: 'Add your blood sugar value here',
                                fillColor: Colors.white38,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black54, width: 1.0),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter a value' + ' for diabetes'
                                  : null,
                              onChanged: (value) {
                                setState(() {
                                  inputValue = double.parse(value);
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: ElevatedButton(
                              onPressed: () async {
                                if (_formKeyDiabetes.currentState!.validate()) {
                                  DiabetesFirestoreManager.addDiabetes(
                                    DiabetesData(
                                        date: DateTime.now(),
                                        value: inputValue!),
                                  );
                                  print(inputValue);
                                  // Navigator.of(context).pop();
                                }
                              },
                              child: Text(
                                'Add diabetes',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.black54),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.lightGreenAccent),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.lightGreenAccent[100],
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0)));
              // _chartData.add(DiabetesData(
              //     DateTime.now().hour.toDouble() - 1.0,
              //     DateTime.now().minute.toDouble(),
              //     DateTime.now().day,
              //     DateTime.now().month,
              //     DateTime.now().year,
              //     70));
              // _chartSeriesController!.updateDataSource(
              //   addedDataIndexes: <int>[_chartData.length - 1],
              // );
            },
            child: Text(
              'Add Blood Sugar Value',
              style: TextStyle(
                fontFamily: "SF Pro Rounded",
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
