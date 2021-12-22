import 'package:flutter/material.dart';
import 'package:taskcpl2/questionbody.dart';

class Questions extends StatefulWidget {
  static const routeNamed = 'first_question';
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int r = 0;
  @override
  Widget build(BuildContext context) {
    List answers = [
      'matarawy',
      'matarawy',
      'matarawy',
      'matarawy',
    ];
    List<int> score = [1, 1, 1, 1];

    return Scaffold(
        appBar: AppBar(
          title: const Text("The Quiz App"),
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
          automaticallyImplyLeading: false,
        ),
        body: Questionbody(
            answers, score, 'who is your favorite instructor?', 0, r));
  }
}
