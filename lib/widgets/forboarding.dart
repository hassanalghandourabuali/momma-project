import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 34,
        ),
        Image(
          image: AssetImage(image),
        ),
        SizedBox(
          height: 34,
        ),
        Text(
          title,
          style: TextStyle(
              color: Color(0xff23203F),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 24,
        ),
        Text(subtitle,
            style: TextStyle(
                color: Color(0xff716F87),
                fontSize: 17,
                fontWeight: FontWeight.w400,
                height: 1.5),
            textAlign: TextAlign.center),
      ],
    );
  }
}
