import 'dart:convert';
import 'package:care_4_u_project/Datamodel/CoronaStatus/CoronaTimestamps.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class _LineChart extends StatefulWidget {
  const _LineChart({
    required this.isShowingMainData,
    required this.confirmed,
    required this.dates,
    required this.recovered,
    required this.deaths,
  });

  final bool isShowingMainData;
  final List<int> confirmed;
  final List<int> deaths;
  final List<int> recovered;
  final List<String> dates;

  @override
  __LineChartState createState() => __LineChartState();
}

class __LineChartState extends State<_LineChart> {
  late List<FlSpot> _confirmedSpots;
  double maxY = 0;

  @override
  void initState() {
    super.initState();
    widget.confirmed.forEach((element) {
      if (element > maxY) {
        maxY = element.toDouble();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LineChart(
      timeStampData,
    );
  }

  LineChartData get timeStampData => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: widget.confirmed.length.toDouble(),
        maxY: maxY,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: bottomTitles,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: leftTitles(
          getTitles: (value) {
            return value.toInt().toString();
          },
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        confirmedRecords,
        // lineChartBarData1_2,
        // lineChartBarData1_3,
      ];

  SideTitles leftTitles({required GetTitleFunction getTitles}) => SideTitles(
        getTitles: getTitles,
        showTitles: true,
        margin: 8,
        interval: 500000,
        reservedSize: 40,
        getTextStyles: (context, value) => const TextStyle(
          color: Color(0xff75729e),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 22,
        margin: 10,
        interval: 100,
        getTextStyles: (context, value) => const TextStyle(
          color: Color(0xff72719b),
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        getTitles: (value) {
          return value.toInt().toString();
        },
      );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Color(0xff4e4965), width: 4),
          left: BorderSide(color: Color(0xff4e4965), width: 4),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get confirmedRecords => LineChartBarData(
      isCurved: true,
      colors: [const Color(0xff4af699)],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
      spots: widget.confirmed
          .mapIndexed(
            (record, index) => FlSpot(
              record.toDouble(),
              index.toDouble(),
            ),
          )
          .toList()
      // spots: [
      //   FlSpot(1, 1),
      //   FlSpot(3, 1.5),
      //   FlSpot(5, 1.4),
      //   FlSpot(7, 3.4),
      //   FlSpot(10, 2),
      //   FlSpot(12, 2.2),
      //   FlSpot(15, 1.8),
      //   FlSpot(16, 2.8),
      //   FlSpot(17, 4.8),
      //   FlSpot(18, 3.8),
      //   FlSpot(23, 2.8),
      // ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        colors: [const Color(0xffaa4cfc)],
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false, colors: [
          const Color(0x00aa4cfc),
        ]),
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  LineChartBarData get lineChartBarData1_3 => LineChartBarData(
        isCurved: true,
        colors: const [Color(0xff27b6fc)],
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: [
          FlSpot(1, 2.8),
          FlSpot(3, 1.9),
          FlSpot(6, 3),
          FlSpot(10, 1.3),
          FlSpot(13, 2.5),
        ],
      );
}

class LineChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  late Future<CoronaTimestamps> _coronaTimestamps;

  List<int> _confirmed = [];
  List<int> _deaths = [];
  List<int> _recovered = [];
  List<String> _dates = [];
  Future<CoronaTimestamps> fetchTimeStamps() async {
    final response = await http.get(
      Uri.parse(
        'https://pomber.github.io/covid19/timeseries.json',
      ),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final CoronaTimestamps coronaTimestamps =
          CoronaTimestamps.fromJson(jsonDecode(response.body));
      coronaTimestamps.bangladesh!.forEach((dayData) {
        _confirmed.add(dayData!.confirmed!);
        _recovered.add(dayData.recovered!);
        _deaths.add(dayData.deaths!);
        _dates.add(dayData.date!);
      });
      return coronaTimestamps;
    } else {
      throw Exception('Failed to load timestamps');
    }
  }

  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
    _coronaTimestamps = fetchTimeStamps();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2f2f2f),
      // appBar: AppBar(
      //   title: Text("Corona Statistics"),
      // ),
      body: ListView(
        shrinkWrap: true,
        // shrinkWrap: true,
        children: [
          const SizedBox(
            height: 37,
          ),
          const Text(
            'Covid-19 Statistics',
            style: TextStyle(
              // color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 37,
          ),
          FutureBuilder<CoronaTimestamps>(
            future: _coronaTimestamps,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container(
                  height: 300,
                  child: _LineChart(
                    isShowingMainData: isShowingMainData,
                    recovered: _recovered,
                    deaths: _deaths,
                    confirmed: _confirmed,
                    dates: _dates,
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return Center(
                child: const CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
    );
  }
}

extension ExtendedIterable<E> on Iterable<E> {
  /// Like Iterable<T>.map but callback have index as second argument
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }

  void forEachIndexed(void Function(E e, int i) f) {
    var i = 0;
    forEach((e) => f(e, i++));
  }
}


// Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color(0xff2c274c),
//                   Color(0xff46426c),
//                 ],
//                 begin: Alignment.bottomCenter,
//                 end: Alignment.topCenter,
//               ),
//             ),
//             child: Column(
//               children: <Widget>[
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: <Widget>[
//                     const SizedBox(
//                       height: 37,
//                     ),
//                     const Text(
//                       'Covid-19 Statistics',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 2,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(
//                       height: 37,
//                     ),
//                     Container(
//                       height: 500,
//                       child: _LineChart(isShowingMainData: isShowingMainData),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),