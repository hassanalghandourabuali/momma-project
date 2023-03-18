import 'package:flutter/material.dart';

class Indicators extends StatelessWidget {
  const Indicators({
    Key? key,
    required this.selected,
  }) : super(key: key);
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: selected ? Color(0xff474459) : Color(0xffDDDDDD),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
