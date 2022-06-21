import 'package:flutter/material.dart';
import 'package:food_ninja/components/button_gradient.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        padding: const EdgeInsets.only(top: 47),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.contain)),
        child: Column(
          children: [
            Image.asset("assets/images/Logo.png"),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Login To Your Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: const [
                FormInput(placeholder: "Username"),
                FormInput(placeholder: "Password"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Or Continue With",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: const [
                  ButtonSocialMedia(
                    image: "assets/images/facebook.png",
                    text: "Facebook",
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  ButtonSocialMedia(
                    image: "assets/images/google.png",
                    text: "Google",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Forgot Your Password?",
              style: TextStyle(
                  color: Color(0xff53e88b),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonGradient(
                text: "Login",
                top: 36,
                press: () {
                  Navigator.pushNamed(context, '/home');
                })
          ],
        ),
      ),
    );
  }
}

class ButtonSocialMedia extends StatelessWidget {
  const ButtonSocialMedia({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.fromLTRB(22, 16, 22, 16),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFF4F4F4)),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 50.0,
                  offset: Offset(0, 7),
                  color: Color.fromRGBO(90, 100, 234, 0.07))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(image),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}

class FormInput extends StatelessWidget {
  const FormInput({
    Key? key,
    required this.placeholder,
  }) : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 28, right: 28),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFF4F4F4)),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: const [
            BoxShadow(
                blurRadius: 50.0,
                offset: Offset(0, 7),
                color: Color.fromRGBO(90, 100, 234, 0.07))
          ]),
      child: TextField(
        decoration: InputDecoration(
            hintText: placeholder,
            border: InputBorder.none,
            hintStyle: const TextStyle(color: Color.fromRGBO(59, 59, 59, 0.3))),
      ),
    );
  }
}
