import 'package:care_4_u_project/Datamodel/DiabetesModel.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
    ChartSeriesController? _chartSeriesController;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Blood Glucose',
        ),
        backgroundColor: Color.fromRGBO(155, 229, 224, 0.5),
      ),
      backgroundColor: Color.fromRGBO(210, 246, 254, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 50.0, horizontal: 25.0),
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
                  onRendererCreated: (ChartSeriesController controller) {
                    _chartSeriesController = controller;
                  },
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
          Container(
              child: ElevatedButton(
            onPressed: () {
              _chartData.add(DiabetesData(
                  DateTime.now().hour.toDouble() - 1.0,
                  DateTime.now().minute.toDouble(),
                  DateTime.now().day,
                  DateTime.now().month,
                  DateTime.now().year,
                  70));
              _chartSeriesController!.updateDataSource(
                addedDataIndexes: <int>[_chartData.length - 1],
              );
            },
            child: Text('Add Data'),
          ))
        ],
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
