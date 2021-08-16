import 'dart:convert';

import 'package:care_4_u_project/Datamodel/CoronaStatus/CoronaStatusCountryInfoModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
      appBar: AppBar(
        title: Text("Covid-19 Statistics"),
      ),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
            child: Text(
              "Overview",
              style: textTheme.headline4,
            ),
          ),
        ),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            MediumCard(
              textTheme: textTheme,
              containerColor: Colors.blueAccent,
              number: datamodel.cases!,
              numberColor: Colors.white,
              title: 'Cases',
              titleColor: Colors.white,
            ),
            MediumCard(
              textTheme: textTheme,
              containerColor: Colors.red,
              number: datamodel.deaths!,
              numberColor: Colors.white,
              title: 'Deaths',
              titleColor: Colors.white,
            ),
            MediumCard(
              textTheme: textTheme,
              containerColor: Colors.green,
              number: datamodel.recovered!,
              numberColor: Colors.white,
              title: 'Recovered',
              titleColor: Colors.white,
            ),
            MediumCard(
              textTheme: textTheme,
              containerColor: Colors.blueGrey,
              number: datamodel.active!,
              numberColor: Colors.white,
              title: 'Active',
              titleColor: Colors.white,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
            child: Text(
              "Today\'s Update",
              style: textTheme.headline4,
            ),
          ),
        ),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            MediumCard(
              textTheme: textTheme,
              containerColor: Colors.deepPurple[300]!,
              number: datamodel.todayCases!,
              numberColor: Colors.white,
              title: 'Today\'s Cases',
              titleColor: Colors.white,
            ),
            MediumCard(
              textTheme: textTheme,
              containerColor: Colors.green,
              number: datamodel.todayRecovered!,
              numberColor: Colors.white,
              title: 'Today Recovered',
              titleColor: Colors.white,
            ),
            MediumCard(
              textTheme: textTheme,
              containerColor: Colors.redAccent,
              number: datamodel.todayDeaths!,
              numberColor: Colors.white,
              title: 'Today\'s Deaths',
              titleColor: Colors.white,
            ),
            MediumCard(
              textTheme: textTheme,
              containerColor: Colors.redAccent,
              number: datamodel.critical!,
              numberColor: Colors.white,
              title: 'Critical',
              titleColor: Colors.white,
            ),
          ],
        ),
      ],
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
          padding: const EdgeInsets.all(16.0),
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
