import 'package:flutter/material.dart';
import 'package:kid_math_quiz/kid_math_quizz/screen/big_to_small_screen/big_to_small_puzzle.dart';

class BigToSmallScreen extends StatefulWidget {
  const BigToSmallScreen({super.key});
  static int correct = 0;
  static int wrong = 0;
  static int questionCount = 0;

  @override
  State<BigToSmallScreen> createState() => _BigToSmallScreenState();
}

class _BigToSmallScreenState extends State<BigToSmallScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        title: const Text('ကြီးစဉ်ငယ်လိုက်'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('ကြီးစဉ်ငယ်လိုက်စီပါ။'),
            SizedBox(
              width: width * 0.9,
              height: height * 0.8,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return BigToSmallPuzzle(index: index);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
