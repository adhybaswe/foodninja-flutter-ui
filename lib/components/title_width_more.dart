import 'package:flutter/material.dart';

class TitleWithMore extends StatelessWidget {
  const TitleWithMore({
    Key? key,
    required this.title,
    required this.press,
    required this.moreText,
    this.top = 20,
    this.more = true,
  }) : super(key: key);

  final String title, moreText;
  final VoidCallback press;
  final double top;
  final bool more;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Visibility(
            visible: more,
            child: TextButton(
              onPressed: press,
              child: Text(
                moreText,
                style: const TextStyle(fontSize: 12, color: Color(0xFFFF7C32)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
