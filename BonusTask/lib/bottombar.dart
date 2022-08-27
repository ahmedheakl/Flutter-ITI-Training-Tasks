import 'package:flutter/material.dart';

const double size = 30.0;
const Color greyColor = Color.fromARGB(248, 117, 117, 117);
const Color blueColor = Colors.blue;
const Color whiteColor = Colors.white;

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  BottomBarState createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  String active = "1";

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        active = "1";
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: active == "1" ? blueColor : whiteColor,
                                  width: 5)),
                        ),
                        child: Container(
                            transform:
                                Matrix4.translationValues(0.0, -15.0, 0.0),
                            child: Icon(
                              active == "1" ? Icons.home : Icons.home_outlined,
                              color: active == "1" ? blueColor : greyColor,
                              size: size,
                            )))),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        active = "2";
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: active == "2" ? blueColor : whiteColor,
                                  width: 5)),
                        ),
                        child: Container(
                            transform:
                                Matrix4.translationValues(0.0, -15.0, 0.0),
                            child: Icon(
                              active == "2"
                                  ? Icons.ondemand_video
                                  : Icons.ondemand_video_outlined,
                              color: active == "2" ? blueColor : greyColor,
                              size: size,
                            )))),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        active = "3";
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: active == "3" ? blueColor : whiteColor,
                                  width: 5)),
                        ),
                        child: Container(
                            transform:
                                Matrix4.translationValues(0.0, -15.0, 0.0),
                            child: Icon(
                              active == "3"
                                  ? Icons.people
                                  : Icons.people_outlined,
                              color: active == "3" ? blueColor : greyColor,
                              size: size,
                            )))),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        active = "4";
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: active == "4" ? blueColor : whiteColor,
                                  width: 5)),
                        ),
                        child: Container(
                            transform:
                                Matrix4.translationValues(0.0, -15.0, 0.0),
                            child: Icon(
                              active == "4"
                                  ? Icons.newspaper
                                  : Icons.newspaper_outlined,
                              color: active == "4" ? blueColor : greyColor,
                              size: size,
                            )))),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        active = "5";
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: active == "5" ? blueColor : whiteColor,
                                  width: 5)),
                        ),
                        child: Container(
                            transform:
                                Matrix4.translationValues(0.0, -15.0, 0.0),
                            child: Icon(
                              active == "5"
                                  ? Icons.notifications
                                  : Icons.notifications_outlined,
                              color: active == "5" ? blueColor : greyColor,
                              size: size,
                            )))),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        active = "6";
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: active == "6" ? blueColor : whiteColor,
                                  width: 5)),
                        ),
                        child: Container(
                            transform:
                                Matrix4.translationValues(0.0, -15.0, 0.0),
                            child: Icon(
                              active == "6"
                                  ? Icons.format_list_bulleted
                                  : Icons.format_list_bulleted_outlined,
                              color: active == "6" ? blueColor : greyColor,
                              size: size,
                            )))),
              ],
            )));
  }
}
