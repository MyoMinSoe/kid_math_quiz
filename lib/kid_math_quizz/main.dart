import 'package:flutter/material.dart';
import 'package:kid_math_quiz/kid_math_quizz/screen/menu_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          title: const Text(
            'သင်္ချာပဟေဠိ',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: const MenuScreen(),
      ),
    );
  }
}
