import 'dart:typed_data';
import 'package:care_4_u_project/Datamodel/DiabetesModel/DiabetesModel.dart';
import 'package:care_4_u_project/Services/FirestoreManager/Diabetes/DiabetesFirestoreManager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class DiabetesDetailsView extends StatefulWidget {
  const DiabetesDetailsView({
    Key? key,
  }) : super(key: key);

  @override
  _DiabetesDetailsViewState createState() => _DiabetesDetailsViewState();
}

class _DiabetesDetailsViewState extends State<DiabetesDetailsView> {
  // ignore: unused_field
  late Uint8List _imageFile;
  ScreenshotController screenshotController = ScreenshotController();
  final Stream<QuerySnapshot<Map<String, dynamic>>> _collectionReference =
      FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('diabetes')
          .orderBy('date')
          .snapshots();
  List<DiabetesData> diabetesData = [];
  final _formKeyDiabetes = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = Get.size;
    return Scaffold(
      backgroundColor: Colors.white,
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

            if (diabetesData.isEmpty) {
              double? inputValue;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Please add data",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
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
                          primary: Color(0xff1d617A),
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
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
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
                                          hintText:
                                              'Add your blood sugar value here',
                                          fillColor: Colors.white,
                                          filled: true,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black54,
                                                width: 1.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                        validator: (value) => value!.isEmpty
                                            ? 'Please enter a value' +
                                                ' for diabetes'
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
                                          if (_formKeyDiabetes.currentState!
                                              .validate()) {
                                            DiabetesFirestoreManager
                                                .addDiabetes(
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
                                              color: Colors.white),
                                        ),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateColor.resolveWith(
                                            (states) => Color(0xff1d617A),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            barrierColor: Colors.transparent,
                            backgroundColor: Color(0xffdbefe1),
                            isDismissible: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                            ),
                          );
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
                ),
              );
            }
            return makeChart();
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }

  makeChart() {
    final size = MediaQuery.of(context).size;
    // ChartSeriesController? _chartSeriesController;

    double? inputValue;
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
              padding: EdgeInsets.only(right: Get.width / 20),
              child: Text(
                "Blood Glucose Chart",
                style: TextStyle(
                    fontSize: Get.textTheme.headline4!.fontSize,
                    color: Color(0xff1d617A),
                    fontWeight: FontWeight.w700),
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                screenshotController.capture().then((Uint8List? image) {
                  saveImage(image!);
                  Get.snackbar("Chart Image", "Captured Successful",
                      snackPosition: SnackPosition.BOTTOM);
                }).catchError(
                  (onError) {
                    print(onError);
                  },
                );
              },
              icon: Icon(
                Icons.camera,
                color: Color(0xff1d617A),
              ),
            ),
          ],
        ),
        SizedBox(height: 100),
        Screenshot(
          controller: screenshotController,
          child: SfCartesianChart(
            plotAreaBorderColor: Colors.transparent,
            zoomPanBehavior: ZoomPanBehavior(enablePanning: true),
            legend: Legend(
              isVisible: false,
              alignment: ChartAlignment.center,
              position: LegendPosition.top,
            ),
            enableAxisAnimation: true,
            series: <ChartSeries>[
              FastLineSeries<DiabetesData, DateTime>(
                name: 'Diabetes chart',
                width: 3.0,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.redAccent, Colors.blue]),
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
              ),
            ],
            primaryXAxis: DateTimeAxis(
              edgeLabelPlacement: EdgeLabelPlacement.shift,
              majorGridLines: const MajorGridLines(width: 0),
              dateFormat: DateFormat.Md(),
              intervalType: DateTimeIntervalType.days,
              desiredIntervals: 7,
              visibleMinimum: diabetesData[0].date,
              visibleMaximum: diabetesData[diabetesData.length - 1].date,
            ),
            primaryYAxis: NumericAxis(
              // labelFormat: '{value}',
              majorGridLines: const MajorGridLines(width: 1.0),
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
              primary: Color(0xff1d617A),
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
                              fillColor: Colors.white,
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
                                      date: DateTime.now(), value: inputValue!),
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
                                  color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color(0xff1d617A),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                barrierColor: Colors.transparent,
                backgroundColor: Color(0xffdbefe1),
                isDismissible: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0),
                ),
              );
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

Future<String?> saveImage(Uint8List bytes) async {
  await [Permission.storage].request();
  final time = DateTime.now()
      .toIso8601String()
      .replaceAll('.', '_')
      .replaceAll(':', '_');
  final String name = 'chartScreenshot_$time';
  final result = await ImageGallerySaver.saveImage(bytes, name: name);
  return result['filePath'];
}
