import 'package:care_4_u_project/Services/FirebaseAuth/auth_service.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Care 4U"),
        actions: [
          IconButton(
            onPressed: () async {
              await context.read<AuthService>().logOut();
            },
            icon: Icon(
              FontAwesomeIcons.user,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: Text(
                  "Welcome Back!",
                  style: theme.headline4,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeMediumCard(
                    size: size,
                    theme: theme,
                    title: Text(
                      "7390",
                      style: theme.headline3!.apply(color: Colors.white),
                    ),
                    subtitle: "Steps",
                    icon: RotatedBox(
                      quarterTurns: 3,
                      child: Icon(
                        FontAwesomeIcons.shoePrints,
                        color: Colors.white,
                      ),
                    ),
                    caption: null,
                  ),
                  HomeMediumCard(
                    size: size,
                    theme: theme,
                    title: Text(
                      "2",
                      style: theme.headline3!.apply(color: Colors.white),
                    ),
                    subtitle: "Distance",
                    icon: Icon(
                      FontAwesomeIcons.walking,
                      color: Colors.white,
                    ),
                    caption: 'Km',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.pushNamed(context, 'diabetes-details'),
                        },
                        child: HomeLargeCard(
                          size: size,
                          theme: theme,
                          title: "110 mg/dL",
                          subtitle: "Diabetes",
                          icon: RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              FontAwesomeIcons.syringe,
                              // color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeMediumCard(
                    size: size,
                    theme: theme,
                    title: Text(
                      "2",
                      style: theme.headline3!.apply(color: Colors.white),
                    ),
                    subtitle: "Water",
                    icon: Icon(
                      FontAwesomeIcons.glassWhiskey,
                      color: Colors.white,
                    ),
                    caption: "Cups",
                  ),
                  HomeMediumCard(
                    size: size,
                    theme: theme,
                    title: Text(
                      "120/80",
                      style: theme.headline4!.apply(color: Colors.white),
                    ),
                    subtitle: "Pressure",
                    icon: Icon(
                      FontAwesomeIcons.heartbeat,
                      color: Colors.white,
                    ),
                    color: Colors.redAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeLargeCard extends StatelessWidget {
  const HomeLargeCard({
    Key? key,
    required this.size,
    required this.theme,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  final Size size;
  final TextTheme theme;
  final String title;
  final String subtitle;

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: size.width / 2.25,
      decoration: BoxDecoration(
        color: Colors.white,
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   colors: [
        //     Color(0xffFF6A88),
        //     Color(0xffFF9A8B),
        //     // Color(0xffFF99AC),
        //   ],
        // ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            offset: Offset(8, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    icon,
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: theme.headline6!.fontSize,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: Text(
                    title,
                    style: theme.headline5,
                  ),
                ),
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: LineChart(
                  LineChartData(
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(4, 10),
                            FlSpot(14, 61),
                            FlSpot(40, 100),
                            FlSpot(50, 300),
                            FlSpot(60, 200),
                          ],
                          isCurved: true,
                          colors: [
                            Colors.blue,
                          ],
                          barWidth: 2,
                          dotData: FlDotData(
                            show: false,
                          ),
                        ),
                      ],
                      titlesData: FlTitlesData(
                        show: false,
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      gridData: FlGridData(
                        show: false,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeMediumCard extends StatelessWidget {
  const HomeMediumCard({
    Key? key,
    required this.size,
    required this.theme,
    required this.title,
    required this.subtitle,
    this.caption,
    required this.icon,
    this.color,
  }) : super(key: key);

  final Size size;
  final TextTheme theme;
  final Widget title;
  final String subtitle;
  final String? caption;
  final Widget icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: size.width / 2.25,
      decoration: BoxDecoration(
        color: color ?? Colors.blue,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            offset: Offset(8, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                SizedBox(
                  width: 12,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: theme.headline6!.fontSize,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: title,
                ),
                if (caption != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      caption!,
                      style: theme.headline6!.apply(
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
