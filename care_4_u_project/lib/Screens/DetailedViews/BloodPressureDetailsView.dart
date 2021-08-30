import 'package:care_4_u_project/Datamodel/BloodPressureModel/BloodPressureModel.dart';
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
  late List<BloodPressureData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          )),
      backgroundColor: Color.fromRGBO(210, 246, 254, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SfCartesianChart(
              plotAreaBorderColor: Colors.transparent,
              enableAxisAnimation: true,
              zoomPanBehavior: ZoomPanBehavior(enablePanning: true),
              legend: Legend(
                  isVisible: true,
                  position: LegendPosition.top,
                  alignment: ChartAlignment.center),
              series: <HiloSeries>[
                HiloSeries<BloodPressureData, DateTime>(
                  color: Colors.red,
                  borderWidth: 10,
                  name: 'Blood Pressure chart',
                  dataSource: _chartData,
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
                      barrierDismissible: true,
                    );
                  },
                  xValueMapper: (BloodPressureData bpData, _) => bpData.date,
                  highValueMapper: (BloodPressureData bpData, _) =>
                      bpData.sysValue,
                  lowValueMapper: (BloodPressureData bpData, _) =>
                      bpData.diaValue,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  enableTooltip: true,
                  // onRendererCreated: (ChartSeriesController controller) {
                  //   _chartSeriesController = controller;
                  // },
                ),
              ],
              primaryXAxis: DateTimeAxis(
                edgeLabelPlacement: EdgeLabelPlacement.shift,
                enableAutoIntervalOnZooming: true,
                dateFormat: DateFormat.Hm(),
                intervalType: DateTimeIntervalType.hours,
                majorGridLines: const MajorGridLines(width: 0),
                desiredIntervals: 24,
                visibleMinimum: _chartData[_chartData.length - 2].date,
                visibleMaximum: _chartData[_chartData.length - 1].date,
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
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.015),
                            child: Text(
                              'Add Blood Pressure',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.add),
                                hintText: 'Add your systolic value here',
                                fillColor: Colors.white38,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54, width: 1.0),
                                    borderRadius: BorderRadius.circular(25.0)),
                              ),
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter a value' + ' for systolic'
                                  : null,
                              onChanged: (value) {
                                setState(() {
                                  inputSysValue = int.parse(value);
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.add),
                                hintText: 'Add your diastolic value here',
                                fillColor: Colors.white38,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54, width: 1.0),
                                    borderRadius: BorderRadius.circular(25.0)),
                              ),
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter a value' + ' for diastolic'
                                  : null,
                              onChanged: (value) {
                                setState(() {
                                  inputDiaValue = int.parse(value);
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.175,
                                right: size.width * 0.175,
                                top: size.height * 0.0005,
                                bottom: size.height * 0.015),
                            child: ElevatedButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  print('${inputSysValue}/${inputDiaValue}');
                                }
                              },
                              child: Text(
                                'Add Blood Pressure Values',
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
                  enterBottomSheetDuration: Duration(milliseconds: 750),
                  exitBottomSheetDuration: Duration(milliseconds: 750),
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.lightGreenAccent[100],
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0),
                  ),
                );
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
                'Add Blood Pressure Value',
                style: TextStyle(
                  fontFamily: "SF Pro Rounded",
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<BloodPressureData> getChartData() {
    final List<BloodPressureData> chartData = [
      BloodPressureData(DateTime(2021, 8, 16, 12, 30), 120, 70),
      BloodPressureData(DateTime(2021, 8, 16, 14, 30), 125, 76),
      BloodPressureData(DateTime(2021, 8, 16, 16, 30), 120, 78),
      BloodPressureData(DateTime(2021, 8, 16, 18, 30), 118, 72),
      BloodPressureData(DateTime(2021, 8, 16, 20, 30), 110, 60),
      BloodPressureData(DateTime(2021, 8, 17, 12, 30), 110, 71),
      BloodPressureData(DateTime(2021, 8, 17, 14, 30), 115, 72),
      BloodPressureData(DateTime(2021, 8, 17, 16, 30), 118, 76),
      BloodPressureData(DateTime(2021, 8, 17, 20, 30), 119, 79),
    ];
    return chartData;
  }
}
