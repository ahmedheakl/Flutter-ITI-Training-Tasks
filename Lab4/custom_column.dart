import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  CustomColumn({Key? key, this.upperTxt, this.midTxt, this.lowerTxt})
      : super(key: key);
  String? upperTxt;
  String? midTxt;
  String? lowerTxt;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <
        Widget>[
      Text(
        upperTxt!,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      Text(midTxt!, style: const TextStyle(color: Colors.white, fontSize: 20)),
      Text(lowerTxt!, style: const TextStyle(color: Colors.white, fontSize: 20))
    ]);
  }
}
