import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottombar.dart';
import 'package:flutter_application_1/page_body.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Container(
                  child: Container(
                      color: Colors.white,
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: const PageBody()))),
          bottomNavigationBar: const BottomBar())));
}
