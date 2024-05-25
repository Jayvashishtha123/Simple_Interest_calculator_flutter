import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int p = 1000;
  double r = 0;
  int t = 1;
  double a = 0;
  double i = 0;

  @override
  Widget build(BuildContext context) {
    setState(() {
      a = p * (1 + (r / 100) * t);
    });
    setState(() {
      i = p * (r / 100) * t;
    });
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Principal Amount',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 20.0),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 205, 234, 214),
                  ),
                  child: Text(
                    '₹ $p',
                    style: const TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 36, 117, 60)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Slider(
            min: 1000,
            max: 10000,
            divisions: 9000,
            thumbColor: const Color.fromARGB(255, 222, 224, 223),
            activeColor: const Color.fromARGB(255, 36, 117, 60),
            value: p.toDouble(),
            onChanged: (principle) {
              setState(() {
                p = principle.toInt();
              });
            }),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Rate of Interest (p.a)',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 20.0),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 205, 234, 214),
                    ),
                    child: Text(
                      '${r.toStringAsFixed(1)}%',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 36, 117, 60)),
                    )),
              ],
            ),
          ),
        ),
        Slider(
            min: 0,
            max: 50,
            thumbColor: const Color.fromARGB(255, 222, 224, 223),
            activeColor: const Color.fromARGB(255, 36, 117, 60),
            value: r,
            onChanged: (rate) {
              setState(() {
                r = rate;
              });
            }),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Time Period',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 20.0),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 205, 234, 214),
                  ),
                  child: Text(
                    '$t Yr',
                    style: const TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 36, 117, 60)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Slider(
            min: 0,
            max: 35,
            divisions: 35,
            thumbColor: const Color.fromARGB(255, 222, 224, 223),
            activeColor: const Color.fromARGB(255, 36, 117, 60),
            value: t.toDouble(),
            onChanged: (time) {
              setState(() {
                t = time.toInt();
              });
            }),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Principle Amount',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 20.0),
                ),
                Text(
                  '₹$p',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Interest',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 20.0),
                ),
                Text(
                  '₹${i.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total Amount',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 20.0),
                ),
                Text(
                  '₹${a.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
