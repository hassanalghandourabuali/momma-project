import 'package:flutter/material.dart';

class PaymentSuccesScreen extends StatefulWidget {
  const PaymentSuccesScreen({Key? key}) : super(key: key);

  @override
  State<PaymentSuccesScreen> createState() => _PaymentSuccesScreenState();
}

class _PaymentSuccesScreenState extends State<PaymentSuccesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                'images/circle1.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Payment Successful!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Color(0xff111111),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'We have emailed you the receipt.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Color(0xff8F8FA6),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/rateorder_screen');
              },
              child: Text(
                'Finish!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff6A90F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                minimumSize: Size(262, 47),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
