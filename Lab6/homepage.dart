import 'package:flutter/material.dart';

const Color backgroundColor = Color.fromARGB(255, 51, 136, 211);
var imgs = [
  "images/ball1.png",
  "images/ball2.png",
  "images/ball3.png",
  "images/ball4.png",
  "images/ball5.png"
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: backgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = (index + 1) % 5;
                  });
                },
                child: Image(
                    image: AssetImage(
                  imgs.elementAt(index),
                )))
          ],
        ));
  }
}
