import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kid_math_quiz/mmfont_converter.dart';

Random random = Random();

class GreatNumberScreen extends StatelessWidget {
  const GreatNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.amber.withOpacity(0.3),
        foregroundColor: const Color.fromARGB(255, 84, 47, 150),
        title: const Text('အကြီးကိန်း ပဟေဠိ'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<int> num1 = List.generate(10, (index) => random.nextInt(90) + 10);
  List<int> num2 = List.generate(10, (index) => random.nextInt(90) + 10);
  int correct = 0;
  int wrong = 0;
  int count = 0;
  int result = 0;
  List<bool> btn1isEnable = List.generate(10, (index) => true);
  List<bool> btn2isEnable = List.generate(10, (index) => true);

  List<Color> btn2Color =
      List.generate(10, (index) => Colors.purpleAccent.withOpacity(0.4));
  List<Color> btn1Color =
      List.generate(10, (index) => Colors.purpleAccent.withOpacity(0.4));

  void isCheck(int checkIndex, int selectNum) {
    if (num1[checkIndex] > num2[checkIndex]) {
      result = num1[checkIndex];
    } else {
      result = num2[checkIndex];
    }

    if (selectNum == result) {
      correct++;
    } else {
      wrong++;
    }
    count++;
    if (count == 10) {
      showDialog(
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.8),
          barrierLabel: 'အဖြေရလဒ်',
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: const BeveledRectangleBorder(),
              title: const Text(
                textAlign: TextAlign.center,
                'အကြီးကိန်းပဟေဠိ ရလဒ်',
                style: TextStyle(
                  color: Color.fromARGB(255, 176, 100, 2),
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: Text(
                textAlign: TextAlign.center,
                'စုစုပေါင်းမေးခွန်း (${MMfontConverter.mmFontConvert(correct + wrong)}) ခု\nအမှန် (${MMfontConverter.mmFontConvert(correct)}) ခု | အမှား (${MMfontConverter.mmFontConvert(wrong)}) ခု',
                style: const TextStyle(
                  fontFamily: 'PYI',
                  fontSize: 18,
                  height: 2,
                ),
              ),
              actions: [
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.withOpacity(0.7),
                      foregroundColor: Colors.black,
                      shape: const BeveledRectangleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(context);
                    },
                    child: const Text('ထွက်မယ်'),
                  ),
                ),
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.amberAccent.withOpacity(0.1),
      child: Center(
        child: Column(
          children: [
            const Text(
              'ကြီးသောကိန်းကိုရွေးပါ။',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 76, 41, 136),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      color: Colors.purple.withOpacity(0.2),
                      width: double.infinity,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'မေးခွန်း (${MMfontConverter.mmFontConvert(index + 1)})',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          TextButton(
                            onPressed: btn1isEnable[index]
                                ? () {
                                    btn1isEnable[index] = false;
                                    btn2isEnable[index] = false;
                                    isCheck(index, num1[index]);
                                    btn1Color[index] = Colors.amber;
                                    setState(() {});
                                  }
                                : null,
                            style: TextButton.styleFrom(
                              backgroundColor: btn1Color[index],
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Text(
                              MMfontConverter.mmFontConvert(num1[index]),
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: btn2isEnable[index]
                                ? () {
                                    btn1isEnable[index] = false;
                                    btn2isEnable[index] = false;
                                    isCheck(index, num2[index]);
                                    btn2Color[index] = Colors.amber;
                                    setState(() {});
                                  }
                                : null,
                            style: TextButton.styleFrom(
                              backgroundColor: btn2Color[index],
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Text(
                              MMfontConverter.mmFontConvert(num2[index]),
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
