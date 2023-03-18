import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController  = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
  }

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
  }

  String? _firstName;
  String? _lastName;
  String? _email;
  String? _phone;
  String? _password;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, '/signin_screen');
        }, icon: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xff23203F),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Login to start using app,',
                  style: TextStyle(
                      color: Color(0xff716F87),
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 36,
              ),
              TextField(
                controller: _firstNameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  // helperText: 'HassanAlghandour000@gmail.com',
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
                  // helperText: 'HassanAlghandour000@gmail.com',
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
                  // helperText: 'HassanAlghandour000@gmail.com',
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
                  // helperText: 'HassanAlghandour000@gmail.com',
                  hintText: 'Phone',
                  hintStyle: TextStyle(
                    color: Color(0xff9391A4),
                  ),
                  errorText: _phone,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _passwordController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  // helperText: 'HassanAlghandour000@gmail.com',
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Color(0xff9391A4),
                  ),
                  errorText: _password,
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {
                  performlogin();
                },
                child: Text(
                  'Sign Up',
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
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    Navigator.pushNamed(context, '/main_screen');
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
        _phoneController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
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
      _password = _passwordController.text.isEmpty
          ? 'Please fill this field in password'
          : null;
    });
  }
}
