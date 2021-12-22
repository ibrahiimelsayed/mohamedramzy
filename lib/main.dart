import 'package:flutter/material.dart';
import 'package:taskcpl2/question1.dart';
// import 'package:taskcpl2/question2.dart';
// import 'package:taskcpl2/question3.dart';
// import 'package:taskcpl2/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Questions(),
    ));
  }
}
