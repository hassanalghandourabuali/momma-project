import 'package:flutter/material.dart';

class ProDetailScreen extends StatefulWidget {
  const ProDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProDetailScreen> createState() => _ProDetailScreenState();
}

class _ProDetailScreenState extends State<ProDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home_screen');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Product Details',
          style: TextStyle(
              color: Color(0xff474559),
              fontSize: 25,
              fontWeight: FontWeight.w300),
        ),centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Image(
                    image: AssetImage(
                      'images/bag2.png',
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Positioned(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          maxRadius: 20,
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xffFF0000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Handbag',
                    style: TextStyle(
                        color: Color(0xff111111),
                        fontSize: 18,
                        fontWeight: FontWeight.w300)),
                Text(
                  '125\$',
                  style: TextStyle(
                      color: Color(0xff444557),
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Bags',
                style: TextStyle(
                    color: Color(0xff87879D),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Divider(
              color: Color(0xffE8E8E8),
              thickness: 2,
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 331,
              height: 218,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: Offset(0, 2),
                    blurRadius: 7,
                    spreadRadius: 0.2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing  \n'
                  'typesetting industry. Lorem Ipsum has been the \n'
                  'industry’s standard dummy text ever since the 1500s, \n'
                  'when an unknown printer took a galley of type and \n'
                  'scrambled it to make a type specimen book.\n'
                  'Lorem Ipsum is simply dummy text of the printing \n'
                  ' typesetting industry. Lorem Ipsum has been the \n'
                  'industry’s standard dummy text ever since the 1500s,\n '
                  'when an unknown printer took a galley of type and \n'
                  'scrambled it to make a type specimen book.\n ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff9393A7),
                    fontWeight: FontWeight.w300,
                    wordSpacing: 0.9,
                    letterSpacing: 0.3,
                    height: 1.8,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/cart_screen');
              },
              child: Text(
                'ADD TO CART',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff6A90F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                minimumSize: Size(332, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
