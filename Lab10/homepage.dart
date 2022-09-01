import 'package:flutter/material.dart';
import 'package:omg/myapp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool visible = false;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(children: [
          Expanded(
              child: ListView(
            children: [
              Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color.fromARGB(255, 20, 71, 89),
                        Color.fromARGB(255, 30, 95, 120)
                      ])),
                  child: Center(
                    child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 2))),
                        child: const Text("LOGIN",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30))),
                  )),
              Form(
                  key: _formKey,
                  child: Container(
                      margin: const EdgeInsets.all(50),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: TextFormField(
                              decoration:
                                  const InputDecoration(hintText: "username"),
                              controller: userNameController,
                              validator: (value) {
                                if (value!.length <= 3) {
                                  return "Please enter a valid username";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: TextFormField(
                              obscureText: !visible,
                              decoration: InputDecoration(
                                  hintText: "password",
                                  suffixIcon: IconButton(
                                    icon: Icon(visible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        visible = !visible;
                                      });
                                    },
                                  )),
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordController,
                              validator: (value) {
                                if (value!.length <= 6) {
                                  return "Please enter a valid password";
                                }
                                return null;
                              },
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyApp()));
                                }
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(
                                      const Color.fromARGB(255, 33, 103, 128)),
                                  foregroundColor: MaterialStateProperty.all<Color>(
                                      Colors.white),
                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                      const EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 15)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      const RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(20))))),
                              child: const Text("login", style: TextStyle(color: Colors.white, fontSize: 18)))
                        ],
                      )))
            ],
          ))
        ]),
      ),
    ));
  }
}
