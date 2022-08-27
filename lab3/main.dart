import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(child: Text("New News")),
            backgroundColor: const Color.fromARGB(255, 101, 59, 185)),
        body: Container(
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 22),
            child: Column(children: [
              Center(
                  child: Image.asset("images/img1.jpg",
                      width: 350, height: 300, fit: BoxFit.fitHeight)),
              Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      const CircleAvatar(
                          backgroundImage: AssetImage("images/img2.jpeg"),
                          radius: 40),
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text("Instructor",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(247, 114, 131, 142))))
                    ],
                  )),
              const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(247, 114, 131, 142)))
            ])),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 148, 118, 207),
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 28.0,
              ),
              Icon(
                Icons.comment,
                color: Colors.white,
                size: 28.0,
              ),
              Icon(
                Icons.share,
                color: Colors.white,
                size: 28.0,
              ),
            ],
          ),
        ));
  }
}
