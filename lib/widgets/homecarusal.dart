import 'package:flutter/material.dart';

class HomeCarusal extends StatelessWidget {
  const HomeCarusal(
      {Key? key,
        required this.image,
        })
      : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 198,
      decoration: BoxDecoration(
        color: Color(0xffF0F1F6),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}
