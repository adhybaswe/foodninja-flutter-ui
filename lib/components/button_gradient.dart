import 'package:flutter/material.dart';

class ButtonGradient extends StatelessWidget {
  const ButtonGradient({
    Key? key,
    required this.text,
    required this.press,
    required this.top,
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
      margin: EdgeInsets.only(top: top),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff53e88b), Color(0xff15be77)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: TextButton(
        onPressed: press,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
