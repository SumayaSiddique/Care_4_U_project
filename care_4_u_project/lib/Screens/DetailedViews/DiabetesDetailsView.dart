import 'package:care_4_u_project/Datamodel/DiabetesModel.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:get/get.dart';

class DiabetesDetailsView extends StatefulWidget {
  const DiabetesDetailsView({Key? key}) : super(key: key);

  @override
  _DiabetesDetailsViewState createState() => _DiabetesDetailsViewState();
}

class _DiabetesDetailsViewState extends State<DiabetesDetailsView> {
  late List<DiabetesData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ChartSeriesController? _chartSeriesController;
    final _formKey = GlobalKey<FormState>();
    double? inputValue;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
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
        backgroundColor: Color.fromRGBO(210, 246, 254, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
              child: SfCartesianChart(
                plotAreaBorderColor: Colors.transparent,
                legend: Legend(
                  isVisible: true,
                  alignment: ChartAlignment.center,
                  position: LegendPosition.bottom,
                ),
                tooltipBehavior: _tooltipBehavior,
                enableAxisAnimation: true,
                series: <ChartSeries>[
                  SplineSeries<DiabetesData, double>(
                    name: 'Diabetes chart',
                    dataSource: _chartData,
                    yValueMapper: (DiabetesData diabetesData, _) =>
                        diabetesData.value,
                    xValueMapper: (DiabetesData diabetesData, _) =>
                        diabetesData.hour,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true,
                    // onRendererCreated: (ChartSeriesController controller) {
                    //   _chartSeriesController = controller;
                    // },
                  ),
                ],
                primaryXAxis: NumericAxis(
                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                  majorGridLines: const MajorGridLines(width: 0),
                ),
                primaryYAxis: NumericAxis(
                  labelFormat: '{value}',
                  majorGridLines: const MajorGridLines(width: 0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width / 5),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.lightGreen),
                ),
                onPressed: () {
                  Get.bottomSheet(
                      Container(
                        height: size.height * 0.375,
                        child: Form(
                          key: _formKey,
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
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
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
                                    if (_formKey.currentState!.validate()) {
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
                                    backgroundColor:
                                        MaterialStateColor.resolveWith(
                                            (states) =>
                                                Colors.lightGreenAccent),
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
        ),
      ),
    );
  }

  List<DiabetesData> getChartData() {
    final List<DiabetesData> chartData = [
      DiabetesData(
          DateTime.now().hour.toDouble(),
          DateTime.now().minute.toDouble(),
          DateTime.now().day,
          DateTime.now().month,
          DateTime.now().year,
          110),
      DiabetesData(
          DateTime.now().hour.toDouble() + 1.0,
          DateTime.now().minute.toDouble() + 35,
          DateTime.now().day,
          DateTime.now().month,
          DateTime.now().year,
          150),
      DiabetesData(
          DateTime.now().hour.toDouble() + 2.0,
          DateTime.now().minute.toDouble() + 15,
          DateTime.now().day,
          DateTime.now().month,
          DateTime.now().year,
          120),
    ];
    return chartData;
  }
}
