import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("images/girl_face.jpg"),
                  radius: 30,
                ),
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: const [
                          Text("Samantha Chen",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.verified,
                              color: Colors.blue,
                              size: 20,
                            ),
                          )
                        ]),
                        Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Row(
                              children: const [
                                Text(
                                  "8h . ",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 151, 151, 151),
                                      fontSize: 15),
                                ),
                                Icon(Icons.public,
                                    color: Color.fromARGB(255, 151, 151, 151),
                                    size: 18)
                              ],
                            ))
                      ],
                    ))
              ],
            ),
            const Icon(
              Icons.more_horiz,
              size: 24.0,
              color: Colors.black,
            )
          ],
        ));
  }
}
