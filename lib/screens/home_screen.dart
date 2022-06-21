import 'package:flutter/material.dart';
import 'package:food_ninja/components/header_with_notification.dart';
import 'package:food_ninja/components/near_card.dart';
import 'package:food_ninja/components/popular_card.dart';
import 'package:food_ninja/components/search_with_filter.dart';
import 'package:food_ninja/components/title_width_more.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        // padding: const EdgeInsets.only(left: 31, right: 31, top: 60),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Pattern_main.png'),
                fit: BoxFit.contain)),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 31, right: 31, top: 60),
          child: Column(
            children: [
              const HeaderWithNotification(),
              const SizedBox(
                height: 20,
              ),
              const SearchWithFilter(),
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/banner.png'),
              TitleWithMore(
                title: "Nearest Restaurant",
                moreText: "View More",
                press: () {
                  Navigator.pushNamed(context, '/explore-restaurant');
                },
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    NearCard(
                      title: "Vegan Resto",
                      minute: "12 Mins",
                      image: 'assets/images/restaurant_image.png',
                    ),
                    NearCard(
                      title: "Healthy Food",
                      minute: "8 Mins",
                      image: 'assets/images/restaurant_image.png',
                    ),
                    NearCard(
                      title: "Healthy Food",
                      minute: "8 Mins",
                      image: 'assets/images/restaurant_image.png',
                    ),
                    NearCard(
                      title: "Healthy Food",
                      minute: "8 Mins",
                      image: 'assets/images/restaurant_image.png',
                    )
                  ],
                ),
              ),
              TitleWithMore(
                title: "Popular Menu",
                moreText: "View More",
                press: () {
                  Navigator.pushNamed(context, '/popular-menu');
                },
                top: 0,
              ),
              const PopularCard(
                image: 'assets/images/photo_menu.png',
                title: "Green Noddle",
                subtitle: "Noodle Home",
                price: "\$15",
              ),
              const PopularCard(
                image: 'assets/images/photo_menu.png',
                title: "Green Noddle",
                subtitle: "Noodle Home",
                price: "\$15",
              ),
              const PopularCard(
                image: 'assets/images/photo_menu.png',
                title: "Green Noddle",
                subtitle: "Noodle Home",
                price: "\$15",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GNav(duration: Duration(milliseconds: 100), tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.heart_broken,
          text: 'Likes',
        ),
        GButton(
          icon: Icons.search,
          text: 'Search',
        ),
        GButton(
          icon: Icons.account_tree_rounded,
          text: 'Profile',
        )
      ]),
    );
  }
}
