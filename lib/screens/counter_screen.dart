import 'package:flutter/material.dart';
import 'package:formomma/screens/models/shared_pref_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharedPrefController().initSharedPref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_counter;
            SharedPrefController().changeCounter(_counter);
          });
        },
        child: Icon(Icons.plus_one),
      ),
      body: Center(
        child: Text(
          SharedPrefController().counter.toString(),
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
