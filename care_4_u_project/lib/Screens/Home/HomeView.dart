import 'package:care_4_u_project/FirebaseAuth/auth_service.dart';
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
                  style: theme.headline6,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeMediumCard(
                    size: size,
                    theme: theme,
                    title: "7390",
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
                    title: "2",
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
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => {
                        Navigator.pushNamed(context, 'diabetes-details'),
                      },
                      child: HomeMediumCard(
                        size: size,
                        theme: theme,
                        title: "110",
                        subtitle: "Diabetes",
                        icon: RotatedBox(
                          quarterTurns: 3,
                          child: Icon(
                            FontAwesomeIcons.syringe,
                            color: Colors.white,
                          ),
                        ),
                        caption: 'mg/dL',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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
    required this.caption,
    required this.icon,
  }) : super(key: key);

  final Size size;
  final TextTheme theme;
  final String title;
  final String subtitle;
  final String? caption;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: size.width / 2.25,
      decoration: BoxDecoration(
        color: Colors.blue,
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
                  child: Text(
                    title,
                    style: theme.headline3!.apply(color: Colors.white),
                  ),
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
