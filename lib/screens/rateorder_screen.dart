import 'package:flutter/material.dart';
import 'package:formomma/widgets/staricons.dart';

class RateOrderScreen extends StatefulWidget {
  const RateOrderScreen({Key? key}) : super(key: key);

  @override
  State<RateOrderScreen> createState() => _RateOrderScreenState();
}

class _RateOrderScreenState extends State<RateOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'How was your order \nexperiences from it Momma?',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Color(0xff171717),
                height: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StarIcons(),
                StarIcons(),
                StarIcons(),
                StarIcons(),
                Icon(
                  Icons.star,
                  color: Color(0xffDCDCDC),
                )
              ],
            ),
            SizedBox(
              height: 37,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/orderhistory_screen');
              },
              child: Text(
                'SUBMIT',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff6A90F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                minimumSize: Size(292, 57),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/orderhistory_screen');
              },
              child: Text(
                'Not now!',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                  color: Color(0xff9A98A8),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
