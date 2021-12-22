import 'package:flutter/material.dart';
import 'package:taskcpl2/question1.dart';
import 'package:taskcpl2/questionbody.dart';

class Questions2 extends StatefulWidget {
  static const routeNamed = 'second_question';
  final int r;
  const Questions2(this.r, {Key? key}) : super(key: key);

  @override
  State<Questions2> createState() => _Questions2State();
}

class _Questions2State extends State<Questions2> {
  @override
  Widget build(BuildContext context) {
    List answers = ['black', 'red', 'green', 'white', 'yellow'];
    List<int> score = [10, 5, 3, 1, 1];

    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
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
              answers, score, 'what is your favorite color?', 1, widget.r)),
    );
  }
}
