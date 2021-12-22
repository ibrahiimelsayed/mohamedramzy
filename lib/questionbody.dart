import 'package:flutter/material.dart';
import 'package:taskcpl2/question2.dart';
import 'package:taskcpl2/question3.dart';
import 'package:taskcpl2/result.dart';

// ignore: must_be_immutable
class Questionbody extends StatefulWidget {
  List answers;
  List<int> score;
  String title;
  int index;
  final int r;
  Questionbody(this.answers, this.score, this.title, this.index, this.r,
      {Key? key})
      : super(key: key);

  @override
  State<Questionbody> createState() => _QuestionbodyState();
}

class _QuestionbodyState extends State<Questionbody> {
  @override
  Widget build(BuildContext context) {
    int result = widget.r;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'what is your favorite color?',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: widget.answers.length,
              itemBuilder: (BuildContext context, int i) {
                return MaterialButton(
                  onPressed: () {
                    if (widget.index == 0) {
                      result = result + widget.score[i];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Questions2(result)),
                      );
                    } else if (widget.index == 1) {
                      result = result + widget.score[i];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Questions3(result)),
                      );
                    } else {
                      result = result + widget.score[i];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Results(result)),
                      );
                    }
                  },
                  child: Text(
                    widget.answers[i],
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  color: Colors.red,
                );
              }),
        ),
      ],
    );
  }
}
