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
    required this.bgImage,
  }) : super(key: key);

  final Size size;
  final TextTheme theme;
  final Widget title;
  final String subtitle;
  final String? caption;
  final Widget icon;
  final Color? color;
  final String bgImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 22.0),
      child: Container(
        height: 180,
        width: size.width / 2.15,
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: AssetImage(
          //     bgImage,
          //   ),
          // ),
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
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 20,
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
      ),
    );
  }
}
