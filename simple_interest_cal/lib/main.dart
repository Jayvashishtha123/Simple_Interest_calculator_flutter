import 'package:flutter/material.dart';
import 'package:simple_interest_cal/Calculator.dart';

void main() {
  runApp(const SimpleInterestCal());
}

class SimpleInterestCal extends StatefulWidget {
  const SimpleInterestCal({super.key});

  @override
  State<SimpleInterestCal> createState() => _SimpleInterestCalState();
}

class _SimpleInterestCalState extends State<SimpleInterestCal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 191, 219, 216),
          title: const Text('Simple Interest Calculator'),
        ),
        body: const Calculator(),
      ),
    );
  }
}
