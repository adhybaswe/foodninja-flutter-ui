import 'package:flutter/material.dart';
import 'package:food_ninja/components/button_gradient.dart';

class OnboardingFirst extends StatelessWidget {
  const OnboardingFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 58),
        child: Column(
          children: [
            Image.asset(
              "assets/images/illustration.png",
              height: 434,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              margin: const EdgeInsets.only(top: 39),
              child: Column(
                children: const [
                  Text(
                    "Find your  Comfort Food here",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Here You Can find a chef or dish for every taste and color. Enjoy!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            ButtonGradient(
              text: "Next",
              top: 47,
              press: () {
                Navigator.pushNamed(context, '/onboarding2');
              },
            )
          ],
        ),
      ),
    );
  }
}
