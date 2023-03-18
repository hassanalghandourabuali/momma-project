import 'package:flutter/material.dart';
import 'package:formomma/screens/about_screen.dart';
import 'package:formomma/screens/boarding_screen.dart';
import 'package:formomma/screens/cart_screen.dart';
import 'package:formomma/screens/counter_screen.dart';
import 'package:formomma/screens/faq_screen.dart';
import 'package:formomma/screens/favorites_screen.dart';
import 'package:formomma/screens/fortabbar/boots_screen.dart';
import 'package:formomma/screens/fortabbar/handbags_screen.dart';
import 'package:formomma/screens/fortabbar/kinsa_screen.dart';
import 'package:formomma/screens/fortabbar/mens_screen.dart';
import 'package:formomma/screens/fortabbar/wommens_screen.dart';
import 'package:formomma/screens/home_screen.dart';
import 'package:formomma/screens/main_screen.dart';
import 'package:formomma/screens/models/shared_pref_controller.dart';
import 'package:formomma/screens/more_screen.dart';
import 'package:formomma/screens/orderdetails_screen.dart';
import 'package:formomma/screens/orderhistory_screen.dart';
import 'package:formomma/screens/paymentmode_screen.dart';
import 'package:formomma/screens/paymentsucces_screen.dart';
import 'package:formomma/screens/prodetail_screen.dart';
import 'package:formomma/screens/profile_screen.dart';
import 'package:formomma/screens/rateorder_screen.dart';
import 'package:formomma/screens/resetpass_screen.dart';
import 'package:formomma/screens/search_screen.dart';
import 'package:formomma/screens/signin_screen.dart';
import 'package:formomma/screens/signup_screen.dart';
import 'package:formomma/screens/splash_screen.dart';
import 'package:formomma/screens/verify_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initSharedPref();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: {
        '/main_screen': (context) => MainScreen(),
        '/counter_screen': (context) => CounterScreen(),
        '/splash_screen': (context) => SplashScreen(),
        '/boarding_screen': (context) => BoardingScreen(),
        '/signin_screen': (context) => SignInScreen(),
        '/resetpass_screen': (context) => ResetPassScreen(),
        '/home_screen': (context) => HomeScreen(),
        '/signup_screen': (context) => SignUpScreen(),
        '/verify_screen': (context) => VerifyScreen(),
        '/kinsa_screen': (context) => KinsaScreen(),
        '/wommens_screen': (context) => WommensScreen(),
        '/handbags_screen': (context) => HandBagsScreen(),
        '/boots_screen': (context) => BootsScreen(),
        '/mens_screen': (context) => MensScreen(),
        '/cart_screen': (context) => CartScreen(),
        '/more_screen': (context) => MoreScreen(),
        '/prodetail_screen': (context) => ProDetailScreen(),
        '/paymentmode_screen': (context) => PaymentModeScreen(),
        '/paymentmode_screen': (context) => PaymentModeScreen(),
        '/paymentsucces_screen': (context) => PaymentSuccesScreen(),
        '/rateorder_screen': (context) => RateOrderScreen(),
        '/orderhistory_screen': (context) => OrderHistoryScreen(),
        '/orderdetails_screen': (context) => OrderDetailsScreen(),
        '/search_screen': (context) => SearchScreen(),
        '/profile_screen': (context) => ProfileScreen(),
        '/about_screen': (context) => AboutScreen(),
        '/favoriets_screen': (context) => FavorietsScreen(),
        '/faq_screen': (context) => FaqScreen(),
      },
    );
  }
}
