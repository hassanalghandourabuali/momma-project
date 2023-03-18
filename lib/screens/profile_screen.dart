import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formomma/widgets/listtile.dart';

import 'cart_screen.dart';
import 'home_screen.dart';
import 'models/forbottomnav.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;

  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
  }

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
  }

  String? _firstName;
  String? _lastName;
  String? _email;
  String? _phone;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, '/more_screen');
        }, icon: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [

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
                style: TextStyle(
                  color: Color(0xff444657),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'johndeo@yourmail.com',
                style: TextStyle(
                  color: Color(0xff87879D),
                  fontWeight: FontWeight.w300,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Orders Count',
                          style: TextStyle(
                            color: Color(0xff444557),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '13',
                          style: TextStyle(
                            color: Color(0xff9E9DB0),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border(
                        right: BorderSide(
                          color: Color(0xffE8E8E8),
                          width: 3,
                        ),
                      )),
                    ),
                    Column(
                      children: [
                        Text(
                          'Total Paid',
                          style: TextStyle(
                            color: Color(0xff444557),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '2342.55 \$',
                          style: TextStyle(
                            color: Color(0xff9E9DB0),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TextField(
                controller: _firstNameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'First Name',
                  hintStyle: TextStyle(
                    color: Color(0xff9391A4),
                  ),
                  errorText: _firstName,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _lastNameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  hintStyle: TextStyle(
                    color: Color(0xff9391A4),
                  ),
                  errorText: _lastName,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Color(0xff9391A4),
                  ),
                  errorText: _email,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(
                    color: Color(0xff9391A4),
                  ),
                  errorText: _phone,
                ),
              ),
              SizedBox(
                height: 44,
              ),
              ElevatedButton(
                onPressed: () {
                  performlogin();
                },
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff6A90F2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  minimumSize: Size(315, 53),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    Navigator.pushNamed(context, '/profile_screen');
  }

  void performlogin() {
    if (checkdata()) {
      login();
    }
  }

  bool checkdata() {
    if (_firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _phoneController.text.isNotEmpty) {
      return true;
    } else {
      checkError();
    }
    showSnackBar(message: 'Please enter all field in this page', error: true);
    return false;
  }

  void showSnackBar({required String message, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: error ? Colors.red : Colors.blue,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void checkError() {
    setState(() {
      _firstName = _firstNameController.text.isEmpty
          ? 'Please fill this field First Name'
          : null;
      _lastName = _lastNameController.text.isEmpty
          ? 'Please fill this field in Last Name'
          : null;
      _email = _emailController.text.isEmpty
          ? 'Please fill this field in Email'
          : null;
      _phone = _phoneController.text.isEmpty
          ? 'Please fill this field in Phone'
          : null;
    });
  }
}
