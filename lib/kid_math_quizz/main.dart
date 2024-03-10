import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        body: Body(),
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
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 10, left: 20, right: 20),
      color: Colors.blue.withOpacity(0.2),
      child: Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {},
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
            ElevatedButton(
              onPressed: () {},
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
            ElevatedButton(
              onPressed: () {},
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
            ElevatedButton(
              onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
