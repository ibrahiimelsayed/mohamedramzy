// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:taskcpl2/question1.dart';

class Results extends StatelessWidget {
  static const routeNamed = 'result';
  final int r;
  const Results(this.r, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text(int r) {
      String resultText;
      if (r <= 8) {
        resultText = 'You are awesome and innocent!';
      } else if (r <= 12) {
        resultText = 'Pretty likeable!';
      } else if (r <= 16) {
        resultText = 'You are ... strange?!';
      } else {
        resultText = 'You are so bad!';
      }
      return resultText;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("The Quiz App"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Questions()),
                );
              },
              icon: const Icon(Icons.replay_outlined))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$r',
                  style: const TextStyle(fontSize: 120),
                ),
                Text(
                  text(r),
                  style: const TextStyle(fontSize: 30),
                )
              ]),
        ),
      ),
    );
  }
}
