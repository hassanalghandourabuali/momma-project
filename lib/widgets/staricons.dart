import 'package:flutter/material.dart';

class StarIcons extends StatelessWidget {
  const StarIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Icon(
        Icons.star,
        color: Color(0xff6A90F2),
      ),
    );
  }
}
