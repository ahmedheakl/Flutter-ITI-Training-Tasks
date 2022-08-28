import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

const Color barColor = Color.fromARGB(255, 31, 72, 161);
void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text("Ask Me Anything"),
      backgroundColor: barColor,
    ),
    body: const HomePage(),
  )));
}
