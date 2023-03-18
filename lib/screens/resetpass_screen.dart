import 'package:flutter/material.dart';

class ResetPassScreen extends StatefulWidget {
  const ResetPassScreen({Key? key}) : super(key: key);

  @override
  State<ResetPassScreen> createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
  late TextEditingController _emailreset;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailreset = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailreset.dispose();
  }

  String? _emailerror;

  @override
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text(
              'Reset Password',
              style: TextStyle(
                color: Color(0xff23203F),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8,),
            Text(
              'Enter your email to reset password',
              style: TextStyle(
                color: Color(0xff716F87),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 32,),

            TextField(
              controller: _emailreset,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Email',
                errorText: _emailerror,
              ),
            ),
            SizedBox(height: 40,),

            ElevatedButton(
              onPressed: () {
                performlogin();
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff6A90F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                minimumSize: Size(double.infinity, 53),
              ),
            ),
            Spacer(
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }

  void login() {
    Navigator.pushNamed(context, '/verify_screen');
  }

  void performlogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailreset.text.isNotEmpty) {
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
      _emailerror =
          _emailreset.text.isEmpty ? 'Please enter your email here' : null;
    });
  }
}
