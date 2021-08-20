import 'package:flutter/material.dart';

class HomeLargeCard extends StatelessWidget {
  const HomeLargeCard({
    Key? key,
    required this.size,
    required this.theme,
    required this.title,
    required this.subtitle,
    required this.child,
    required this.icon,
  }) : super(key: key);

  final Size size;
  final TextTheme theme;
  final String title;
  final String subtitle;
  final Widget child;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: size.width * 0.25,
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
            child
          ],
        ),
      ),
    );
  }
}
