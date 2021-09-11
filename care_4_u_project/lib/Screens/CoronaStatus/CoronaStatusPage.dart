import 'dart:convert';

import 'package:care_4_u_project/Datamodel/CoronaStatus/CoronaStatusCountryInfoModel.dart';
import 'package:care_4_u_project/Screens/CoronaStatus/CoronaChart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

class CoronaStatusPage extends StatefulWidget {
  const CoronaStatusPage({Key? key}) : super(key: key);

  @override
  _CoronaStatusPageState createState() => _CoronaStatusPageState();
}

class _CoronaStatusPageState extends State<CoronaStatusPage> {
  Future<CoronaStatus> fetchCountryInfo() async {
    final response =
        await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries/BD'));
    return CoronaStatus.fromJson(jsonDecode(response.body));
  }

  late Future<CoronaStatus> data;

  @override
  void initState() {
    super.initState();
    data = fetchCountryInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdbefe1),
      // appBar: AppBar(
      //   title: Text("Covid-19 Statistics"),
      //   actions: [
      //     // IconButton(
      //     //   onPressed: () {
      //     //     Get.to(() => LineChartSample1());
      //     //   },
      //     //   icon: Icon(
      //     //     Icons.ac_unit,
      //     //   ),
      //     // ),
      //   ],
      // ),
      body: FutureBuilder(
        future: data,
        builder: (BuildContext context, AsyncSnapshot<CoronaStatus> snapshot) {
          if (snapshot.hasData) {
            final datamodel = snapshot.data!;
            return ResultView(datamodel: datamodel);
          } else
            return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
    );
  }
}

class ResultView extends StatelessWidget {
  const ResultView({
    Key? key,
    required this.datamodel,
  }) : super(key: key);

  final CoronaStatus datamodel;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListView(
      children: [
        // SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Be Aware",
                style: TextStyle(
                  fontSize: Get.textTheme.headline5!.fontSize,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1d617A),
                ),
              ),
              Text(
                "From Covid-19",
                style: TextStyle(
                  fontSize: Get.textTheme.headline5!.fontSize,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1d617A),
                ),
              ),
              Text(
                "Keep yourself Home Quarantined",
                style: TextStyle(
                    fontSize: Get.textTheme.headline6!.fontSize,
                    fontWeight: FontWeight.w200,
                    color: Color(0xff1d617A)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
            child: Text(
              "Corona Statistics",
              style: textTheme.headline4,
            ),
          ),
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: CoronaCard(
                color: Color(0xffFDB258),
                title: "Affected",
                number: datamodel.cases.toString(),
              ),
            ),
            Flexible(
              flex: 1,
              child: CoronaCard(
                color: Color(0xffFC5959),
                title: "Death",
                number: datamodel.deaths.toString(),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: CoronaCard(
                color: Color(0xff4AD879),
                title: "Recovered",
                number: datamodel.recovered.toString(),
              ),
            ),
            Flexible(
              flex: 1,
              child: CoronaCard(
                color: Color(0xff4BB5FE),
                title: "Active",
                number: datamodel.active.toString(),
              ),
            ),
            Flexible(
              flex: 1,
              child: CoronaCard(
                color: Color(0xff9058FE),
                title: "Serious",
                number: datamodel.critical.toString(),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
            child: Text(
              "Today\'s Update",
              style: textTheme.headline4,
            ),
          ),
        ),
        CoronaCard(
          color: Color(0xff4BB5FE),
          title: "Today\'s Cases",
          number: datamodel.todayCases.toString(),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: CoronaCard(
                color: Color(0xff4AD879),
                title: "Recovered",
                number: datamodel.todayRecovered.toString(),
              ),
            ),
            Flexible(
              flex: 1,
              child: CoronaCard(
                color: Color(0xffFC5959),
                title: "Deaths",
                number: datamodel.todayDeaths.toString(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CoronaCard extends StatelessWidget {
  const CoronaCard({
    Key? key,
    required this.title,
    required this.number,
    required this.color,
  }) : super(key: key);
  final String title;
  final String number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black.withOpacity(0.2),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 8,
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
              Spacer(),
              Text(
                number,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumCard extends StatelessWidget {
  const MediumCard({
    Key? key,
    required this.textTheme,
    required this.title,
    required this.titleColor,
    required this.containerColor,
    required this.number,
    required this.numberColor,
  }) : super(key: key);

  final TextTheme textTheme;
  final String title;
  final Color titleColor;
  final Color containerColor;
  final int number;
  final Color numberColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: textTheme.headline5!.apply(color: titleColor),
              ),
              Text(
                number.toString(),
                style: textTheme.headline6!.apply(color: numberColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
