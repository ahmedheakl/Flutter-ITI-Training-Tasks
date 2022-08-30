import 'package:flutter/material.dart';
import 'package:omg/task.dart';

const Color leadingIconColor = Color.fromARGB(255, 192, 228, 251);
const Color leadingIconColorDone = Colors.green;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: Center(
        child: Container(
            padding: const EdgeInsets.all(20.0),
            color: const Color.fromARGB(255, 232, 234, 237),
            child: const HomePage()),
      )),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  TextEditingController taskController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  List<Task> widgets = [Task("Do Homework"), Task("Make the Dishes")];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Today's tasks",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Divider(thickness: 3),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Card(
                    child: ListTile(
                  leading: SizedBox(
                      width: 25,
                      height: 25,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: widgets[index].checked
                                ? leadingIconColorDone
                                : leadingIconColor,
                            borderRadius: BorderRadius.circular(5.0)),
                      )),
                  title: Text(widgets[index].name,
                      style: const TextStyle(fontSize: 20)),
                  trailing: Checkbox(
                    checkColor: Colors.white,
                    value: widgets[index].checked,
                    onChanged: (bool? value) {
                      setState(() {
                        widgets[index].checked = value!;
                      });
                    },
                  ),
                )),
                itemCount: widgets.length,
              ),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: Form(
                    key: _formkey,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: TextFormField(
                                  style: const TextStyle(color: Colors.black),
                                  decoration: const InputDecoration(
                                      fillColor: Colors.white,
                                      focusColor: Colors.white,
                                      hoverColor: Colors.white,
                                      filled: true,
                                      hintText: "Write a Task",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 1.0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.0)))),
                                  controller: taskController,
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      return "You need to write a task";
                                    }
                                    return null;
                                  },
                                ))),
                        ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                setState(() {
                                  widgets.add(Task(taskController.text));
                                  taskController.text = "";
                                });
                              }
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                minimumSize: MaterialStateProperty.all<Size>(
                                    const Size(50, 50)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 200, 200, 200))))),
                            child: const Text(
                              "+",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ))
                      ],
                    )))
          ],
        ));
  }
}
