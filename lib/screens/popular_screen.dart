import 'package:flutter/material.dart';
import 'package:food_ninja/components/header_with_notification.dart';
import 'package:food_ninja/components/popular_card.dart';
import 'package:food_ninja/components/search_with_filter.dart';
import 'package:food_ninja/components/title_width_more.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.only(left: 31, right: 31, top: 60),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Pattern_main.png'),
                  fit: BoxFit.contain)),
          child: Column(
            children: [
              const HeaderWithNotification(),
              const SizedBox(
                height: 20,
              ),
              const SearchWithFilter(),
              TitleWithMore(
                  title: "Popular Menu",
                  press: () {},
                  moreText: "",
                  more: false),
              Expanded(
                  child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: const [
                  PopularCard(
                    image: 'assets/images/photo_menu.png',
                    title: "Green Noddle",
                    subtitle: "Noodle Home",
                    price: "\$15",
                  ),
                  PopularCard(
                    image: 'assets/images/photo_menu.png',
                    title: "Green Noddle",
                    subtitle: "Noodle Home",
                    price: "\$15",
                  ),
                  PopularCard(
                    image: 'assets/images/photo_menu.png',
                    title: "Green Noddle",
                    subtitle: "Noodle Home",
                    price: "\$15",
                  ),
                  PopularCard(
                    image: 'assets/images/photo_menu.png',
                    title: "Green Noddle",
                    subtitle: "Noodle Home",
                    price: "\$15",
                  ),
                  PopularCard(
                    image: 'assets/images/photo_menu.png',
                    title: "Green Noddle",
                    subtitle: "Noodle Home",
                    price: "\$15",
                  ),
                  PopularCard(
                    image: 'assets/images/photo_menu.png',
                    title: "Green Noddle",
                    subtitle: "Noodle Home",
                    price: "\$15",
                  ),
                  PopularCard(
                    image: 'assets/images/photo_menu.png',
                    title: "Green Noddle",
                    subtitle: "Noodle Home",
                    price: "\$15",
                  ),
                ],
              ))
            ],
          )),
    );
  }
}
