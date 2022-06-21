import 'package:flutter/material.dart';

class HeaderWithNotification extends StatelessWidget {
  const HeaderWithNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            "Find Your Favorite Food",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(14),
          margin: const EdgeInsets.only(left: 60),
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(20, 70, 90, 0.2),
                    offset: Offset(11, 28),
                    blurRadius: 50)
              ],
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(255, 255, 255, 255)),
          child: Image.asset("assets/images/icon_notification.png"),
        )
      ],
    );
  }
}
