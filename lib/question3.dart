import 'package:flutter/material.dart';
import 'package:taskcpl2/question1.dart';
import 'package:taskcpl2/questionbody.dart';

class Questions3 extends StatefulWidget {
  static const routeNamed = 'third_question';
  final int r;
  const Questions3(this.r, {Key? key}) : super(key: key);

  @override
  State<Questions3> createState() => _Questions3State();
}

class _Questions3State extends State<Questions3> {
  @override
  Widget build(BuildContext context) {
    List answers = [
      'rabbit',
      'snake',
      'elephant',
      'lion',
    ];
    List<int> score = [3, 11, 5, 9];

    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text("The Quiz App"),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Questions()),
                    );
                  },
                  icon: const Icon(Icons.replay_outlined))
            ],
          ),
          body: Questionbody(
              answers, score, 'what is your favorite animal?', 2, widget.r)),
    );
  }
}
