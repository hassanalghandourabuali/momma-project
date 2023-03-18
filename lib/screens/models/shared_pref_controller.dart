import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefController {
  final keyCounter = 'counter';
  static final SharedPrefController _instance =
      SharedPrefController._internal();
  late SharedPreferences _sharedPreferences;

  SharedPrefController._internal();

  factory SharedPrefController() {
    return _instance;
  }

  Future<void> initSharedPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  SharedPreferences get pref => _sharedPreferences;

  Future<bool> changeCounter(int counter) async {
    return await _sharedPreferences.setInt(keyCounter, counter);
  }

  int get counter => _sharedPreferences.getInt(keyCounter) ?? 0;

  Future<bool> removeCounter() async {
    return await _sharedPreferences.remove(keyCounter);
  }

  Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }
}
