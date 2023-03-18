import 'package:flutter/material.dart';

class CartSubTitleText extends StatelessWidget {
  const CartSubTitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'from boots category',
      style: TextStyle(
          color: Color(0xffA1A1B4),
          fontSize: 14,
          fontWeight: FontWeight.w400),
    );
  }
}
