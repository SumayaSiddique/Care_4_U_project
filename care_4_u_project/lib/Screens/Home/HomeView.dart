import 'package:care_4_u_project/Screens/Home/modules/HomeMediumCard.dart';
import 'package:care_4_u_project/Screens/Home/modules/MedicineView.dart';
import 'package:care_4_u_project/Services/FirebaseAuth/auth_service.dart';
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
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
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
              ),
              MedicineView(size: size, theme: theme),
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/corona-status');
                      },
                      child: HomeMediumCard(
                        size: size,
                        theme: theme,
                        title: Text(
                          "8465",
                          style: theme.headline3!.apply(color: Colors.white),
                        ),
                        subtitle: "Covid-19",
                        icon: Icon(
                          FontAwesomeIcons.virus,
                          color: Colors.white,
                        ),
                        // caption: "Today's Cases",
                        color: Colors.redAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => {
                              Navigator.pushNamed(context, 'diabetes-details'),
                            },
                            child: HomeMediumCard(
                              size: size,
                              theme: theme,
                              title: Text("110",
                                  style: theme.headline3!
                                      .apply(color: Colors.white)),
                              subtitle: "Diabetes",
                              caption: "mg/dL",
                              icon: RotatedBox(
                                quarterTurns: 3,
                                child: Icon(
                                  FontAwesomeIcons.syringe,
                                  // color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
