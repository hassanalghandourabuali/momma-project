import 'package:flutter/material.dart';
import 'package:formomma/widgets/forboarding.dart';
import 'package:formomma/widgets/forindicators.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  late PageController _pageController;
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 39,
          ),
          Visibility(
            visible: _counter != 2,
            child: TextButton(
              onPressed: () {
                _pageController.animateToPage(2,
                    duration: Duration(seconds: 2), curve: Curves.ease);
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Text('SKIP'),
              ),
            ),
          ),
          Visibility(
            visible: _counter == 2,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/signin_screen');
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Text('START'),
              ),
            ),
          ),
          // Visibility(
          //   visible: _counter == 2,
          //   child: ElevatedButton(
          //     onPressed: () {
          //       Navigator.pushReplacementNamed(context, '/signin_screen');
          //     },
          //     child: Text(
          //       'START',
          //       style:
          //       TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          //     ),
          //     style: ElevatedButton.styleFrom(
          //       primary: Color(0xff6A90F2),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(25),
          //       ),
          //       minimumSize: Size(315, 53),
          //     ),
          //   ),
          // ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _counter = value;
                });
              },
              children: [
                OnBoarding(
                  image: 'images/boarding1.png',
                  title: 'Welcome!',
                  subtitle:
                      'Now were up in the big leagues gettingour \nturn at bat. The Brady Bunch thats the way\n we  Brady Bunch..',
                ),
                OnBoarding(
                  image: 'images/boarding2.png',
                  title: 'Add to cart',
                  subtitle:
                      'Now were up in the big leagues gettingour \nturn at bat. The Brady Bunch thats the way\n we  Brady Bunch..',
                ),
                OnBoarding(
                  image: 'images/boarding3.png',
                  title: 'Enjoy Purchase!',
                  subtitle:
                      'Now were up in the big leagues gettingour \nturn at bat. The Brady Bunch thats the way\n we  Brady Bunch..',
                ),
              ],
            ),
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
            height: 150,
          )
        ],
      ),
    );
  }
}
