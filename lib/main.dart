// ignore_for_file: prefer_const_constructors

import 'package:counter_flutter_2024/pages/counter_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}
