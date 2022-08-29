import 'package:flutter/material.dart';
import 'package:omg/prescription.dart';
import 'dart:math';

const TextStyle textStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 43, 81, 122));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int index = 0;
  Random random = Random();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(title: const Text("Click to Know You Prescription")),
            body: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/mainImage.jpeg"),
                        fit: BoxFit.fill)),
                child: Column(children: [
                  Container(
                      margin: const EdgeInsets.only(top: 170),
                      child: const Text("أحمد هيكل", style: textStyle)),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(prescriptionList[index].prescriptionText,
                          style: textStyle)),
                  Container(
                      margin: const EdgeInsets.only(top: 110),
                      child: Text(prescriptionList[index].medicinAnswer,
                          style: textStyle)),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index = random.nextInt(prescriptionList.length);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green, fixedSize: Size(500, 40)),
                      child: const Text("اعرف حالتك"))
                ]))));
  }
}
