import 'package:flutter/material.dart';

class NearCard extends StatelessWidget {
  const NearCard({
    Key? key,
    required this.title,
    required this.minute,
    required this.image,
  }) : super(key: key);

  final String title, minute, image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      height: 184,
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 50,
              color: const Color(0xFF5A6CEA).withOpacity(0.07)),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(22)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(
            height: 17,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            minute,
            style:
                TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.5)),
          )
        ],
      ),
    );
  }
}
