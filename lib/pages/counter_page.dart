// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
//változók
  int _counter = 0;

//metódusok

  void _incrementCounter() {
    //setState
    setState(() {
      _counter++;
    });
  }
//UI (felhasználó)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter számláló program",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lime[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            Text(
              "Megnyomások száma: ",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue),
            ),
            Text(
              _counter.toString(),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            //Gomb
            ElevatedButton(
                onPressed: _incrementCounter, child: Text("Hozzáad")),
          ],
        ),
      ),
    );
  }
}
