import 'package:flutter/material.dart';

class ListOrderHistory extends StatelessWidget {
  const ListOrderHistory({
    Key? key,
    required this.image,
    required this.title,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String image;
  final String title;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(1, 2),
              spreadRadius: 0.9,
              blurRadius: 10),
        ],
      ),
      width: 347,
      height: 107,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image(
            image: AssetImage(image),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              title,
              style: TextStyle(
                  color: Color(0xff111111),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 2, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                      color: Color(0xffA1A1B4),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  text2,
                  style: TextStyle(
                      color: Color(0xff111111),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
