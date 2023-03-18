import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  late TextEditingController _firstNumber;
  late TextEditingController _seconedNumber;
  late TextEditingController _thirdNumber;
  late TextEditingController _fourthNumber;

  void initState() {
    super.initState();
    _firstNumber = TextEditingController();
    _seconedNumber = TextEditingController();
    _thirdNumber = TextEditingController();
    _fourthNumber = TextEditingController();
  }

  void dispose() {
    super.dispose();
    _firstNumber.dispose();
    _seconedNumber.dispose();
    _thirdNumber.dispose();
    _fourthNumber.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/resetpass_screen');
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Verify Your Account',
                    style: GoogleFonts.roboto(
                      color: Color(0xff23203F),
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'We are sending OTP to validate your \n mobile number. Hang on!',
                style: GoogleFonts.roboto(
                    color: Color(0xff9192AE),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.5),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xff6A90F2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        controller: _firstNumber,
                        onSaved: (pin2) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          hintText: '0',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xff6A90F2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        controller: _seconedNumber,
                        onSaved: (pin2) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          hintText: '0',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xff6A90F2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        controller: _thirdNumber,
                        onSaved: (pin3) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          hintText: '0',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xff6A90F2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        controller: _fourthNumber,
                        onSaved: (pin4) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          hintText: '0',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Color(0xff9192AE),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  text: 'SMS has been sent to  ',
                  children: [
                    TextSpan(
                      text: '1800 123 4567',
                      style: TextStyle(
                        color: Color(0xff23203F),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ElevatedButton(
                  onPressed: () {
                    performlogin();
                  },
                  child: Text(
                    'Submit',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffffffff),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff6A90F2),
                    minimumSize: Size(370, 57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void verify() {
    Navigator.pushNamed(context, '/main_screen');
  }

  void performlogin() {
    if (checkdata()) {
      verify();
    }
  }

  bool checkdata() {
    if (_firstNumber.text.isNotEmpty &&
        _seconedNumber.text.isNotEmpty &&
        _thirdNumber.text.isNotEmpty &&
        _fourthNumber.text.isNotEmpty) {
      return true;
    }
    showSnackBar(message: 'Please put number for each field', error: true);
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
}
