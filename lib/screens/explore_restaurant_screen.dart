import 'package:flutter/material.dart';
import 'package:food_ninja/components/header_with_notification.dart';
import 'package:food_ninja/components/near_card.dart';
import 'package:food_ninja/components/search_with_filter.dart';
import 'package:food_ninja/components/title_width_more.dart';

class ExploreRestourantScreen extends StatelessWidget {
  const ExploreRestourantScreen({Key? key}) : super(key: key);

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
                HeaderWithNotification(),
                SizedBox(
                  height: 20,
                ),
                SearchWithFilter(),
                TitleWithMore(
                    title: "Popular Restaurant",
                    press: () {},
                    moreText: "",
                    more: false),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    children: const [
                      NearCard(
                        title: "Vegan Resto",
                        minute: "12 Mins",
                        image: 'assets/images/restaurant_image.png',
                      ),
                      NearCard(
                        title: "Vegan Resto",
                        minute: "12 Mins",
                        image: 'assets/images/restaurant_image.png',
                      ),
                      NearCard(
                        title: "Vegan Resto",
                        minute: "12 Mins",
                        image: 'assets/images/restaurant_image.png',
                      ),
                      NearCard(
                        title: "Vegan Resto",
                        minute: "12 Mins",
                        image: 'assets/images/restaurant_image.png',
                      ),
                      NearCard(
                        title: "Vegan Resto",
                        minute: "12 Mins",
                        image: 'assets/images/restaurant_image.png',
                      ),
                      NearCard(
                        title: "Vegan Resto",
                        minute: "12 Mins",
                        image: 'assets/images/restaurant_image.png',
                      ),
                      NearCard(
                        title: "Vegan Resto",
                        minute: "12 Mins",
                        image: 'assets/images/restaurant_image.png',
                      ),
                      NearCard(
                        title: "Vegan Resto",
                        minute: "12 Mins",
                        image: 'assets/images/restaurant_image.png',
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
