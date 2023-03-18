import 'package:flutter/material.dart';
import 'package:formomma/widgets/listorderhistory.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/cart_screen');
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Orders History',
          style: TextStyle(
              color: Color(0xff474559),
              fontSize: 25,
              fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '3 Orders',
              style: TextStyle(
                  color: Color(0xff111111),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 12,
            ),
            ListOrderHistory(
              image: 'images/bag2.png',
              title: 'Handbag',
              text1: 'from boots category',
              text2: '\$100',
            ),
            SizedBox(
              height: 10,
            ),
            ListOrderHistory(
              image: 'images/bag4.png',
              title: 'Backpack',
              text1: 'from boots category',
              text2: '\$120',
            ),
            SizedBox(
              height: 10,
            ),
            ListOrderHistory(
              image: 'images/bag1.png',
              title: 'Backpack',
              text1: 'from boots category',
              text2: '\$88',
            ),
          ],
        ),
      ),
    );
  }
}
