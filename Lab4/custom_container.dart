import "package:flutter_application_1/custom_column.dart";
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  Color firstColor;
  Color secondColor;
  double? height;
  String? upperTxt;
  String? midTxt;
  String? lowerTxt;
  CustomContainer(
      {Key? key,
      required this.firstColor,
      required this.secondColor,
      this.height,
      this.upperTxt,
      this.midTxt,
      this.lowerTxt})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!,
      width: 70,
      margin: const EdgeInsets.only(right: 7),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              colors: [firstColor, secondColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.5, 0.5])),
      child: CustomColumn(
        lowerTxt: lowerTxt!,
        midTxt: midTxt!,
        upperTxt: upperTxt!,
      ),
    );
  }
}
