import 'package:flutter/material.dart';

class CartTitle extends StatelessWidget {
  const CartTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Handbag',
          style: TextStyle(
              color: Color(0xff111111),
              fontSize: 18,
              fontWeight: FontWeight.w300),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff161616),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 12,
            child: Icon(
              Icons.close,
              color: Color(0xff161616),
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
