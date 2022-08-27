import 'package:flutter/material.dart';
import 'package:flutter_application_1/profiledetails.dart';

const Color greyColorFade = Color.fromARGB(255, 234, 234, 234);
const Color greyColor = Color.fromARGB(248, 150, 150, 150);
const double size = 22.0;

class PageBody extends StatelessWidget {
  const PageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: greyColorFade, width: 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Suggested for You",
                  style: TextStyle(fontSize: 18),
                ),
                Icon(
                  Icons.more_horiz,
                  size: 24.0,
                  color: Colors.black,
                )
              ],
            )),
        const ProfileDetails(),
        Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: const Text("Here's Jasper, my new puppy!",
                style: TextStyle(fontSize: 18, color: Colors.black))),
        const Image(image: AssetImage("images/dog_pic.webp")),
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: greyColorFade))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(Icons.thumb_up_outlined,
                      color: greyColor, size: size),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Like",
                          style: TextStyle(
                              color: greyColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)))
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.chat_bubble_outline,
                      color: greyColor, size: size),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Comment",
                          style: TextStyle(
                              color: greyColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)))
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.share, color: greyColor, size: size),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Share",
                          style: TextStyle(
                              color: greyColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
