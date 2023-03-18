import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentModeScreen extends StatefulWidget {
  const PaymentModeScreen({Key? key}) : super(key: key);

  @override
  State<PaymentModeScreen> createState() => _PaymentModeScreenState();
}

class _PaymentModeScreenState extends State<PaymentModeScreen> {
  @override
  late TextEditingController dateController = TextEditingController();
  late TextEditingController _phone;
  late TextEditingController _data;
  late TextEditingController _ccv;
  String? _phoneError;
  String? _dateError;
  String? _ccvError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateController.text = '';
    _phone = TextEditingController();
    _data = TextEditingController();
    _ccv = TextEditingController();
    // _phone
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _phone.dispose();
    _data.dispose();
    _ccv.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/cart_screen');
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Payment mode',
          style: TextStyle(
            color: Color(0xff474559),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                height: 214,
                decoration: BoxDecoration(
                  color: Color(0xff6C8EF2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Icon(
                          Icons.payment_outlined,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                      SizedBox(
                        height: 52,
                      ),
                      Text(
                        '1234 5678 9876 5432',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '1234',
                        style: TextStyle(
                          color: Color(0xffC7C7C7),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 27,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'James Born',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Color(0xffC7C7C7),
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                              ),
                              text: 'EXPIRY  ',
                              children: [
                                TextSpan(
                                  text: '03/17',
                                  style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 52,
              ),
              TextField(
                controller: _phone,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(color: Color(0xff9391A4)),
                  errorText: _phoneError,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: _data,
                onTap: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2030),
                  );
                  if (newDate != null) {
                    String formattedDate = DateFormat('MM/YY').format(newDate);
                    setState(() {
                      dateController.text = formattedDate.toString();
                    });
                  }
                },
                // controller: _firstNameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'MM/YY',
                  hintStyle: TextStyle(color: Color(0xff9391A4)),
                  errorText: _dateError,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: _ccv,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'CCV',
                  hintStyle: TextStyle(color: Color(0xff9391A4)),
                  errorText: _ccvError,
                ),
              ),
              SizedBox(
                height: 42,
              ),
              ElevatedButton(
                onPressed: () {
                  performlogin();
                },
                child: Text(
                  'Proceed',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff6A90F2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  minimumSize: Size(double.infinity, 44),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    Navigator.pushReplacementNamed(
        context, '/paymentsucces_screen');
  }

  void performlogin() {
    if (checkdata()) {
      login();
    }
  }

  bool checkdata() {
    if (_phone.text.isNotEmpty &&
        _data.text.isNotEmpty &&
        _ccv.text.isNotEmpty) {
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
      _phoneError =
          _phone.text.isEmpty ? 'Please enter your phone here' : null;
      _dateError =
          _data.text.isEmpty ? 'Please enter your date here' : null;
      _ccvError =
          _ccv.text.isEmpty ? 'Please enter your ccv here' : null;
    });
  }
}
