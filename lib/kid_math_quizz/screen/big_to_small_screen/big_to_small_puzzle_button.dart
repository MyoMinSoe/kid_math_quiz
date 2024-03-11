import 'package:flutter/material.dart';

class BigToSmallPuzzleButton extends StatefulWidget {
  const BigToSmallPuzzleButton(
      {super.key, required this.text, required this.pressed});

  final String text;
  final Function() pressed;

  @override
  State<BigToSmallPuzzleButton> createState() => _BigToSmallPuzzleButtonState();
}

class _BigToSmallPuzzleButtonState extends State<BigToSmallPuzzleButton> {
  bool enable = true;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enable
          ? () {
              enable = false;
              widget.pressed();
              setState(() {});
            }
          : null,
      child: Text(widget.text),
    );
  }
}
