import 'package:flutter/material.dart';
import 'package:formomma/screens/models/shared_pref_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharedPrefController().initSharedPref();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/signin_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: AssetImage('images/splash.png'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/logo.png'),
                ),
                SizedBox(height: 20,),
                Image(
                  image: AssetImage('images/logo2.png'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
