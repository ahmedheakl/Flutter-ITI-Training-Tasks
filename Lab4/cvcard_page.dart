import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_container.dart';

class CvCardPage extends StatelessWidget {
  const CvCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: const EdgeInsets.only(left: 50, right: 20, top: 10, bottom: 10),
        child: Row(
          children: [
            CustomContainer(
                firstColor: const Color.fromARGB(255, 99, 71, 156),
                secondColor: const Color.fromARGB(255, 124, 88, 195),
                height: 350,
                upperTxt: "C",
                midTxt: "Do",
                lowerTxt: "1"),
            CustomContainer(
                firstColor: const Color.fromARGB(255, 76, 87, 155),
                secondColor: const Color.fromARGB(255, 97, 107, 193),
                height: 320,
                upperTxt: "D",
                midTxt: "RI",
                lowerTxt: "2"),
            CustomContainer(
                firstColor: const Color.fromARGB(255, 52, 120, 195),
                secondColor: const Color.fromARGB(255, 66, 150, 247),
                height: 290,
                upperTxt: "E",
                midTxt: "MI",
                lowerTxt: "3"),
            CustomContainer(
                firstColor: const Color.fromARGB(255, 53, 133, 122),
                secondColor: const Color.fromARGB(255, 68, 165, 154),
                height: 260,
                upperTxt: "F",
                midTxt: "FA",
                lowerTxt: "4"),
            CustomContainer(
                firstColor: const Color.fromARGB(255, 200, 161, 12),
                secondColor: const Color.fromARGB(255, 249, 201, 25),
                height: 230,
                upperTxt: "G",
                midTxt: "So",
                lowerTxt: "5"),
            CustomContainer(
                firstColor: const Color.fromARGB(255, 244, 99, 70),
                secondColor: const Color.fromARGB(255, 245, 114, 67),
                height: 200,
                upperTxt: "A",
                midTxt: "LA",
                lowerTxt: "6"),
            CustomContainer(
                firstColor: const Color.fromARGB(255, 111, 87, 78),
                secondColor: const Color.fromARGB(255, 137, 110, 98),
                height: 170,
                upperTxt: "B",
                midTxt: "SI",
                lowerTxt: "7"),
            CustomContainer(
                firstColor: const Color.fromARGB(255, 180, 54, 99),
                secondColor: const Color.fromARGB(255, 225, 67, 123),
                height: 140,
                upperTxt: "C",
                midTxt: "DO",
                lowerTxt: "8")
          ],
        ),
      ),
    ));
  }
}
