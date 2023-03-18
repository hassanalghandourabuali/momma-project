import 'package:flutter/material.dart';
import 'package:formomma/widgets/listorderhistory.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        title: Text(
          'Order Details',
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
              '3 items available',
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
            SizedBox(
              height: 10,
            ),
            ListOrderHistory(
              image: 'images/bag1.png',
              title: 'Backpack',
              text1: 'from boots category',
              text2: '\$88',
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub total:',
                  style: TextStyle(
                      color: Color(0xffA1A1B4),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  '\$100',
                  style: TextStyle(
                      color: Color(0xff232323),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(height: 13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax(15%):',
                  style: TextStyle(
                      color: Color(0xff87879D),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  '\$15',
                  style: TextStyle(
                      color: Color(0xff232323),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Divider(
              color: Color(0xff707070).withOpacity(0.2),
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                      color: Color(0xffA1A1B4),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '\$215',
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff6C8EF2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
