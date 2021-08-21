import 'package:flutter/material.dart';

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
        // gradient: LinearGradient(
        //   colors: [
        //     Color(0xff0093E9),
        //     Color(0xff80D0C7),
        //   ],
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        // ),
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
          vertical: 12.0,
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
