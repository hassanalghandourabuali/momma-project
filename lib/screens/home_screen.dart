import 'package:flutter/material.dart';
import 'package:formomma/screens/fortabbar/boots_screen.dart';
import 'package:formomma/screens/fortabbar/handbags_screen.dart';
import 'package:formomma/screens/fortabbar/kinsa_screen.dart';
import 'package:formomma/screens/fortabbar/mens_screen.dart';
import 'package:formomma/screens/fortabbar/wommens_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectItem = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Home',
          style: TextStyle(
              color: Color(0xff474559),
              fontSize: 24,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
        bottom: TabBar(
          onTap: (int selectItem) {
            setState(() {
              _selectItem = selectItem;
            });
          },
          isScrollable: true,
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                'Kinsa',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: _selectItem == 0
                        ? Color(0xff474559)
                        : Color(0xff9E9DB0)),
              ),
            ),
            Tab(
              child: Text(
                'Womens',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: _selectItem == 1
                        ? Color(0xff474559)
                        : Color(0xff9E9DB0)),
              ),
            ),
            Tab(
              child: Text(
                'Handbags',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: _selectItem == 2
                        ? Color(0xff474559)
                        : Color(0xff9E9DB0)),
              ),
            ),
            Tab(
              child: Text(
                'Boots',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: _selectItem == 3
                        ? Color(0xff474559)
                        : Color(0xff9E9DB0)),
              ),
            ),
            Tab(
              child: Text(
                'Mens',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: _selectItem == 4
                        ? Color(0xff474559)
                        : Color(0xff9E9DB0)),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          KinsaScreen(),
          WommensScreen(),
          HandBagsScreen(),
          BootsScreen(),
          MensScreen(),
        ],
      ),
    );
  }
}
