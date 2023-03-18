import 'package:flutter/material.dart';

class ListTileMore extends StatelessWidget {
  const ListTileMore({
    Key? key,
    required this.leading,
    required this.title,
  }) : super(key: key);
  final Icon leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 62,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Color(0xffDEE8F2),
            width: 1,
          ),
        ),
      ),
      child: ListTile(
        // onTap: () {
        //   Navigator.pushReplacementNamed(context, '/profile_screen');
        // },
        leading: leading,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 17,
            color: Color(0xff87879D),
            fontWeight: FontWeight.w400,
            letterSpacing: 0.8,
          ),
        ),
      ),
    );
  }
}
