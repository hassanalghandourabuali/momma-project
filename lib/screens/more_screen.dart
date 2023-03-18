import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formomma/widgets/listtile.dart';

import 'cart_screen.dart';
import 'home_screen.dart';
import 'models/forbottomnav.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/person.png'),
              maxRadius: 65,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'John Deo',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 6,
          ),
          Text('johndeo@yourmail.com'),
          SizedBox(
            height: 40,
          ),
          ListTileMore(
            leading: Icon(Icons.person),
            title: 'My Profile',
          ),
          ListTileMore(
            leading: Icon(Icons.favorite),
            title: 'Favorites',
          ),
          ListTileMore(
            leading: Icon(FontAwesomeIcons.firstOrder),
            title: 'Orders',
          ),
          ListTileMore(
            leading: Icon(Icons.terminal_sharp),
            title: 'Terms & Conditions',
          ),
          ListTileMore(
            leading: Icon(Icons.lock),
            title: 'Privacy Policy',
          ),
          ListTileMore(
            leading: Icon(Icons.logout),
            title: 'Logout',
          ),
        ],
      ),
    );
  }
}
