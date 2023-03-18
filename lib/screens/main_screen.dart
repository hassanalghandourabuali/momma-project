import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'home_screen.dart';
import 'models/forbottomnav.dart';
import 'more_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int _selected = 0;
  String _title = '_selected';
  List<BottomNavigation> _screens = <BottomNavigation>[
    const BottomNavigation(title: 'Profile', widget: HomeScreen()),
    const BottomNavigation(title: 'Cart', widget: CartScreen()),
    const BottomNavigation(title: 'Favorite', widget: MoreScreen()),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selected,
        onTap: (int selected) {
          setState(() {
            _selected = selected;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: 'More'),
        ],
      ),
      body: _screens.elementAt(_selected).widget,
    );
  }
}
