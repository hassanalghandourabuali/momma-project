import 'package:flutter/material.dart';
import 'package:formomma/widgets/homecarusal.dart';

import '../../widgets/homeindicators.dart';

class HandBagsScreen extends StatefulWidget {
  const HandBagsScreen({Key? key}) : super(key: key);

  @override
  State<HandBagsScreen> createState() => _HandBagsScreenState();
}

class _HandBagsScreenState extends State<HandBagsScreen> {
  @override
  int _counter = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                height: 198,
                child: Expanded(
                  child: PageView(
                    controller:
                        PageController(viewportFraction: 0.8, initialPage: 1),
                    onPageChanged: (value) {
                      setState(
                        () {
                          _counter = value;
                        },
                      );
                    },
                    children: [
                      HomeCarusal(image: 'images/bag1.png'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: HomeCarusal(image: 'images/bag2.png'),
                      ),
                      HomeCarusal(image: 'images/bag3.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Indicators(
                    selected: _counter == 0,
                  ),
                  Indicators(
                    selected: _counter == 1,
                  ),
                  Indicators(
                    selected: _counter == 2,
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                child: GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // mainAxisSpacing: 15,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      childAspectRatio: 132 / 165),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Stack(
                          children: [
                            Image(
                              image: AssetImage('images/bag3.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Icon(
                                Icons.favorite,
                                color: Color(0xff9E9DB0),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Hand bags',
                          style: TextStyle(
                            color: Color(0xff474559),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '\$10.00',
                          style: TextStyle(
                            color: Color(0xff9E9DB0),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
