import 'package:flutter/material.dart';
import 'package:kid_math_quiz/kid_math_quizz/screen/big_no_screen/big_no_screen.dart';
import 'package:kid_math_quiz/kid_math_quizz/screen/big_to_small_screen/big_to_small_screen.dart';
import 'package:kid_math_quiz/kid_math_quizz/screen/small_no_screen/small_no_screen.dart';
import 'package:kid_math_quiz/kid_math_quizz/screen/small_to_big_screen/small_to_big_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
      color: Colors.blue.withValues(alpha: 0.2),
      child: Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BigNoScreen()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: const BeveledRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  )),
              child: const Text(
                'ကြီးသောကိန်း',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 15),
            //*******************************ကြီးသောကိန်း*********************** */
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SmallNoScreen(),
                ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: const BeveledRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  )),
              child: const Text(
                'ငယ်သောကိန်း',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 15),
            //*********************************ငယ်သောကိန်း********************* */
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BigToSmallScreen(),
                ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: const BeveledRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  )),
              child: const Text(
                'ကြီးစဉ်ငယ်လိုက်',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 15),
            //********************************ကြီးစဉ်ငယ်လိုက်******************** */
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SmallToBigScreen(),
                ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: const BeveledRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  )),
              child: const Text(
                'ငယ်စဉ်ကြီးလိုက်',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  height: 1.6,
                ),
              ),
            ),
            //********************************ငယ်စဉ်ကြီးလိုက်******************** */
          ],
        ),
      ),
    );
  }
}
