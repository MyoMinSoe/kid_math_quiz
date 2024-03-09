import 'package:flutter/material.dart';
import 'package:kid_math_quiz/screen/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PYI'),
      debugShowCheckedModeBanner: false,
      title: 'Kid Math Quiz App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: const Color.fromARGB(255, 84, 47, 150),
          backgroundColor: Colors.amber.withOpacity(0.3),
          title: const Text('သင်္ချာပဟေဠိ'),
        ),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}
