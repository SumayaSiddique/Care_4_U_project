import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(47, 46, 65, 1.0),
      floatingActionButton: FloatingActionButton(
        child: FaIcon(
          FontAwesomeIcons.userPlus,
          size: size.height * 0.025,
          color: Color(0xFFFEFEFE),
        ),
        backgroundColor: Color.fromRGBO(255, 101, 132, 1.0),
        onPressed: () {
          Navigator.pushNamed(context, 'sign-up');
        },
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Lottie.asset(
                'lottie/health.json',
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.025, bottom: size.height * 0.115),
                child: Text(
                  'Track Your Health \n like never before',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'SF Pro Rounded',
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.33,
              child: SvgPicture.asset(
                'images/spiral.svg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: size.height * 0.65,
              left: size.width * 0.0875,
              width: size.width * 0.80,
              height: size.height * 0.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(219, 120, 140, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'SF Pro Rounded',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
