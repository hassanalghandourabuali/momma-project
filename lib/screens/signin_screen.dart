import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  bool _isObscure = true;
  int _textCounter = 0;
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _emailError;
  String? _passwordError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = forLogin;
  }

  void forLogin() {
    Navigator.pushReplacementNamed(context, '/signup_screen');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _tapGestureRecognizer.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Sign In',
              style: TextStyle(
                  color: Color(0xff23203F),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              'Login to start using app,',
              style: TextStyle(
                  color: Color(0xff716F87),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 36,
            ),
            TextField(
              controller: _emailTextController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // helperText: 'HassanAlghandour000@gmail.com',
                prefixIcon: Icon(Icons.email),
                hintText: 'Enter your email',
                errorText: _emailError,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              obscureText: _isObscure,
              obscuringCharacter: '*',
              controller: _passwordTextController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                // helperText: 'Hassan@\$12345',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: Icon(
                    _isObscure ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                hintText: 'Enter your password',
                errorText: _passwordError,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                performlogin();
              },
              child: Text(
                'Login',
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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/resetpass_screen');
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6A90F2),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'Don’t have an account? ',
                    style: TextStyle(color: Color(0xff9391A4)),
                    children: [
                      TextSpan(
                        recognizer: _tapGestureRecognizer,
                        text: 'Sign up',
                        style: TextStyle(
                          color: Color(0xff23203F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/main_screen');
  }

  void performlogin() {
    if (checkdata()) {
      login();
    }
  }

  bool checkdata() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
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
      _emailError = _emailTextController.text.isEmpty
          ? 'Please fill this field in email'
          : null;
      _passwordError = _passwordTextController.text.isEmpty
          ? 'Please fill this field in password'
          : null;
    });
  }
}
