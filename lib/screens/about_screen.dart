import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 24,),
            Image(
              image: AssetImage(
                'images/logo.png',
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Image(
              image: AssetImage(
                'images/logo2.png',
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Divider(
              color: Color(0xff707070).withOpacity(0.2),
              endIndent: 5,
              indent: 5,
              thickness: 1,
            ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff474559),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Contrary to popular belief, Lorem Ipsum is'
              ' not simply random text. It has roots in a'
              ' piece of classical professor.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: Color(0xff66647B),
                height: 1.2
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Divider(
              color: Color(0xff707070).withOpacity(0.2),
              endIndent: 5,
              indent: 5,
              thickness: 1,
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage('images/clothes2.png'),
                ),
                Image(
                  image: AssetImage('images/clothes1.png'),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Image(
              image: AssetImage('images/clothes3.png'),
            ),
          ],
        ),
      ),
    );
  }
}
