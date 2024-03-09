import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kid_math_quiz/mmfont_converter.dart';

Random random = Random();

class GreatFirstSortScreen extends StatelessWidget {
  const GreatFirstSortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.amber.withOpacity(0.3),
        foregroundColor: const Color.fromARGB(255, 84, 47, 150),
        title: const Text('ကြီးစဉ်ငယ်လိုက် ပဟေဠိ'),
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
  List<int> num3 = List.generate(10, (index) => random.nextInt(90) + 10);
  List<int> num4 = List.generate(10, (index) => random.nextInt(90) + 10);
  List<int> num5 = List.generate(10, (index) => random.nextInt(90) + 10);
  int correct = 0;
  int wrong = 0;
  int count = 0;
  List<int> result = [];
  List<int> answer = [];
  List<List<String>> selectAnswer =
      List.generate(10, (index) => List.generate(5, (index) => '  '));

  List<bool> btn1isEnable = List.generate(10, (index) => true);
  List<bool> btn2isEnable = List.generate(10, (index) => true);
  List<bool> btn3isEnable = List.generate(10, (index) => true);
  List<bool> btn4isEnable = List.generate(10, (index) => true);
  List<bool> btn5isEnable = List.generate(10, (index) => true);

  List<Color> btn1Color =
      List.generate(10, (index) => Colors.purpleAccent.withOpacity(0.4));
  List<Color> btn2Color =
      List.generate(10, (index) => Colors.purpleAccent.withOpacity(0.4));
  List<Color> btn3Color =
      List.generate(10, (index) => Colors.purpleAccent.withOpacity(0.4));
  List<Color> btn4Color =
      List.generate(10, (index) => Colors.purpleAccent.withOpacity(0.4));
  List<Color> btn5Color =
      List.generate(10, (index) => Colors.purpleAccent.withOpacity(0.4));

  void isCheck(int checkIndex, int selectNum) {
    result = [
      num1[checkIndex],
      num2[checkIndex],
      num3[checkIndex],
      num4[checkIndex],
      num5[checkIndex],
    ];
    result.sort();
    List<int> r = result.reversed.toList();
    answer.add(selectNum);
    for (int i = 0; i < answer.length; i++) {
      selectAnswer[checkIndex][i] = answer[i].toString();
    }
    if (result.length == answer.length) {
      if (r.toString() == answer.toString()) {
        correct++;
      } else {
        wrong++;
      }
      result.clear();
      answer.clear();
      count++;
    }
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
      padding: const EdgeInsets.all(15),
      color: Colors.amberAccent.withOpacity(0.1),
      child: Center(
        child: Column(
          children: [
            const Text(
              'ကြီးသောကိန်းမှငယ်သောကိန်းသို့ စီပေးပါ။',
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 76, 41, 136),
                  fontWeight: FontWeight.bold,
                  height: 1.6),
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
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'မေးခွန်း (${MMfontConverter.mmFontConvert(index + 1)})',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (int i = 0;
                                  i < selectAnswer[index].length;
                                  i++)
                                TextButton(
                                  style: TextButton.styleFrom(
                                    shape: const BeveledRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: Colors.deepPurple,
                                        strokeAlign:
                                            BorderSide.strokeAlignInside,
                                      ),
                                    ),
                                  ),
                                  onPressed: null,
                                  child: Text(
                                    MMfontConverter.mmFontConvert(
                                        int.tryParse(selectAnswer[index][i])),
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: btn1isEnable[index]
                                    ? () {
                                        btn1isEnable[index] = false;
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
                              TextButton(
                                onPressed: btn3isEnable[index]
                                    ? () {
                                        btn3isEnable[index] = false;
                                        isCheck(index, num3[index]);
                                        btn3Color[index] = Colors.amber;
                                        setState(() {});
                                      }
                                    : null,
                                style: TextButton.styleFrom(
                                  backgroundColor: btn3Color[index],
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  MMfontConverter.mmFontConvert(num3[index]),
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: btn4isEnable[index]
                                    ? () {
                                        btn4isEnable[index] = false;
                                        isCheck(index, num4[index]);
                                        btn4Color[index] = Colors.amber;
                                        setState(() {});
                                      }
                                    : null,
                                style: TextButton.styleFrom(
                                  backgroundColor: btn4Color[index],
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  MMfontConverter.mmFontConvert(num4[index]),
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: btn5isEnable[index]
                                    ? () {
                                        btn5isEnable[index] = false;
                                        isCheck(index, num5[index]);
                                        btn5Color[index] = Colors.amber;
                                        setState(() {});
                                      }
                                    : null,
                                style: TextButton.styleFrom(
                                  backgroundColor: btn5Color[index],
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  MMfontConverter.mmFontConvert(num5[index]),
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          )
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
