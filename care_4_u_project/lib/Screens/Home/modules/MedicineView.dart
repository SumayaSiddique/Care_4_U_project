import 'package:care_4_u_project/Screens/Home/modules/HomeLargeCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedicineView extends StatelessWidget {
  const MedicineView({
    Key? key,
    required this.size,
    required this.theme,
  }) : super(key: key);

  final Size size;
  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: HomeLargeCard(
              size: size,
              theme: theme,
              title: "Medicine Reminder",
              subtitle: 'Today',
              icon: Icon(Icons.medication),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(FontAwesomeIcons.pills),
                      Text(
                        'Ebasten 10mg',
                        style: theme.headline5!.apply(color: Colors.black),
                      ),
                      Text(
                        '9:00PM',
                        style: theme.headline6!.apply(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(FontAwesomeIcons.pills),
                      Text(
                        'Reversair 10mg',
                        style: theme.headline5!.apply(color: Colors.black),
                      ),
                      Text(
                        '9:00PM',
                        style: theme.headline6!.apply(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(FontAwesomeIcons.pills),
                      Text(
                        'Esonix 20mg',
                        style: theme.headline5!.apply(color: Colors.black),
                      ),
                      Text(
                        '9:00PM',
                        style: theme.headline6!.apply(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
