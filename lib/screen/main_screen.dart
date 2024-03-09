import 'package:flutter/material.dart';
import 'package:kid_math_quiz/screen/great_first_sort_screen.dart';
import 'package:kid_math_quiz/screen/great_number_screen.dart';
import 'package:kid_math_quiz/screen/small_first_sort_screen.dart';
import 'package:kid_math_quiz/screen/small_number_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent.withOpacity(0.1),
      padding: const EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const GreatNumberScreen(),
                ));
              },
              style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30,
                  )),
              child: const Text(
                'ကြီးသောကိန်း ပဟေဠိ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            //*********ကြီးသောကိန်း ပဟေဠိ*******************************
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SmallNumberScreen(),
                ));
              },
              style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30,
                  )),
              child: const Text(
                'ငယ်သောကိန်း ပဟေဠိ',
                style: TextStyle(fontSize: 20, fontFamily: 'PYI'),
              ),
            ),
            const SizedBox(height: 10),
            //*********ငယ်သောကိန်း ပဟေဠိ********************************
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const GreatFirstSortScreen(),
                ));
              },
              style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30,
                  )),
              child: const Text(
                'ကြီးစဉ်ငယ်လိုက် ပဟေဠိ',
                style: TextStyle(fontSize: 20, height: 1.6),
              ),
            ),
            const SizedBox(height: 10),
            //********ကြီးစဉ်ငယ်လိုက် ပဟေဠိ*********************************
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SmallFirstSortScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30,
                  )),
              child: const Text(
                'ငယ်စဉ်ကြီးလိုက် ပဟေဠိ',
                style: TextStyle(fontSize: 20, height: 1.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
