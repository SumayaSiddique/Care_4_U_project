import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var timer = new Timer(const Duration(seconds: 3), () {
    //   Navigator.pushNamed(context, 'welcome-screen');
    // });
    // timer.cancel();
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'welcome-screen');
      },
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            SvgPicture.asset(
              'images/bg-wave.svg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.26, top: size.height * 0.075),
              child: SvgPicture.asset(
                'images/image_1.svg',
                height: size.width * 0.5,
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    right: size.width * 0.025, top: size.height * 0.0825),
                child: SvgPicture.asset(
                  'images/nice_illustration.svg',
                  height: size.height * 0.30,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: size.height * 0.6),
                child: Text(
                  'CARE 4 U',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SF Pro Rounded'),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: size.height * 0.75),
                child: Text(
                  'Your Next Gen Health Assistant',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
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
