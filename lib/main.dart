import 'package:flutter/material.dart';
import 'package:food_ninja/screens/explore_restaurant_screen.dart';
import 'package:food_ninja/screens/home_screen.dart';
import 'package:food_ninja/screens/login.dart';
import 'package:food_ninja/screens/onboarding.dart';
import 'package:food_ninja/screens/onboarding_second.dart';
import 'package:food_ninja/screens/popular_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Ninja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingFirst(),
        '/onboarding2': (context) => const OnboardingSecond(),
        '/login': (context) => const Login(),
        '/home': (context) => const HomeScreen(),
        '/explore-restaurant': (context) => const ExploreRestourantScreen(),
        '/popular-menu': (context) => const PopularScreen(),
      },
      // home: const OnboardingFirst(),
    );
  }
}
