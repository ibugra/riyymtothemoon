import 'package:flutter/material.dart';
import 'package:riyym/book/recommended.dart';
import 'appbar.dart';
import 'mybooks.dart';

void main() {
  runApp(const MyBookApp());
}

class MyBookApp extends StatefulWidget {
  const MyBookApp({Key? key}) : super(key: key);

  @override
  _MyBookAppState createState() => _MyBookAppState();
}

class _MyBookAppState extends State<MyBookApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
          home: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: const Color.fromARGB(19, 30, 52, 255),
              appBar: const Appbar(),
              body: Column(
                children: const [
                  MyBooks(),
                  Recommended(),
                  //BottomMenu(),
                ],
              ))),
    );
  }
}
