import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  }) : super(key: key);

  final String image, title, subtitle, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(11),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(22)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 50,
                color: const Color(0xFF5A6CEA).withOpacity(0.07))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(image),
              const SizedBox(
                width: 21,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        fontSize: 14, color: Color.fromRGBO(59, 59, 59, 0.3)),
                  )
                ],
              )
            ],
          ),
          Text(
            price,
            style: const TextStyle(
              fontSize: 22,
              color: Color(0xFFFEAD1D),
            ),
          )
        ],
      ),
    );
  }
}
