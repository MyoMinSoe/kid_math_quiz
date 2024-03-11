import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kid_math_quiz/kid_math_quizz/screen/big_to_small_screen/big_to_small_puzzle_button.dart';
import 'package:kid_math_quiz/kid_math_quizz/screen/big_to_small_screen/big_to_small_screen.dart';

class BigToSmallPuzzle extends StatefulWidget {
  final int index;
  BigToSmallPuzzle({required this.index});

  @override
  State<BigToSmallPuzzle> createState() => _BigToSmallPuzzleState();
}

class _BigToSmallPuzzleState extends State<BigToSmallPuzzle> {
  Random random = Random();
  late List<int> questionList;
  @override
  void initState() {
    questionList = List.generate(5, (index) => random.nextInt(90) + 10);
    if (questionList.toSet().length != 5) {
      while (questionList.toSet().length != 5) {
        questionList.add(random.nextInt(90) + 10);
      }
    }
    super.initState();
  }

  List<int> answer = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.withOpacity(0.3),
      padding: const EdgeInsets.all(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('မေးခွန်း (${widget.index + 1})'),
          Row(
            children: [
              for (int i = 0; i < questionList.length; i++)
                BigToSmallPuzzleButton(
                  text: questionList[i].toString(),
                  pressed: () {
                    answer.add(questionList[i]);
                    if (answer.length == questionList.length) {
                      BigToSmallScreen.questionCount++;
                      questionList.sort((a, b) => b.compareTo(a));
                      if (listEquals(answer, questionList)) {
                        BigToSmallScreen.correct++;
                      } else {
                        BigToSmallScreen.wrong++;
                      }
                      if (BigToSmallScreen.questionCount == 10) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Result'),
                                content: Text(
                                    'correct ${BigToSmallScreen.correct}\nwrong ${BigToSmallScreen.wrong}'),
                              );
                            });
                      }
                    }
                  },
                ),
            ],
          )
        ],
      ),
    );
  }
}
