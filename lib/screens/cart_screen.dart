import 'package:flutter/material.dart';
import 'package:formomma/widgets/cartsubtitletext.dart';
import 'package:formomma/widgets/carttitle.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  int _counter = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Cart',
          style: TextStyle(
              color: Color(0xff474559),
              fontSize: 25,
              fontWeight: FontWeight.w300),
        ),

        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
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
              Container(
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
                width: 360,
                height: 115,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image(
                      image: AssetImage('images/bag2.png'),
                    ),
                    title: CartTitle(),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CartSubTitleText(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$100',
                                style: TextStyle(
                                    color: Color(0xff111111),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          --_counter;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xffF2F2F2),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 0),
                                          child: Text('ــ'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        '$_counter',
                                        style: TextStyle(
                                            color: Color(0xff161616),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          ++_counter;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xffF2F2F2),
                                        child: Text('+'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
                width: 360,
                height: 115,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image(
                      image: AssetImage('images/bag2.png'),
                    ),
                    title: CartTitle(),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CartSubTitleText(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$100',
                                style: TextStyle(
                                    color: Color(0xff111111),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          --_counter;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xffF2F2F2),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 0),
                                          child: Text('ــ'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        '$_counter',
                                        style: TextStyle(
                                            color: Color(0xff161616),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          ++_counter;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xffF2F2F2),
                                        child: Text('+'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
                width: 360,
                height: 115,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image(
                      image: AssetImage('images/bag2.png'),
                    ),
                    title: CartTitle(),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CartSubTitleText(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$100',
                                style: TextStyle(
                                    color: Color(0xff111111),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          --_counter;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xffF2F2F2),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 0),
                                          child: Text('ــ'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        '$_counter',
                                        style: TextStyle(
                                            color: Color(0xff161616),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          ++_counter;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xffF2F2F2),
                                        child: Text('+'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub total:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA1A1B4),
                    ),
                  ),
                  Text(
                    '\$100',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff232323),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tax(15%):',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA1A1B4),
                    ),
                  ),
                  Text(
                    '\$15',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff232323),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Divider(
                color: Color(0xffECECEC),
                thickness: 2,
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, '/paymentmode_screen');
                },
                child: Text(
                  'Checkout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff6A90F2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  minimumSize: Size(double.infinity, 40),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  showmyalert();
                },
                child: Text(
                  'Cancel Order',
                  style: TextStyle(
                    color: Color(0xff474459),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(
                      color: Color(0xffC9D8E7),
                      width: 1,
                    ),
                  ),
                  minimumSize: Size(
                    double.infinity,
                    40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showmyalert() {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Color(0xff16191F),
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          title: Column(
            children: [
              Image(
                image: AssetImage('images/cancel.png'),
              ),
              SizedBox(
                height: 34,
              ),
              Text(
                'Are you sure you want \nto cancel this order?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff23203F),
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff6A90F2),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                minimumSize: Size(287, 53),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Not Now!',
                style: TextStyle(
                  color: Color(0xff9293A3),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                    color: Color(0xffE1E1E7),
                    width: 1,
                  ),
                ),
                minimumSize: Size(287, 53),
              ),
            ),
            SizedBox(
              height: 34,
            ),
          ],
        );
      },
    );
  }
}


