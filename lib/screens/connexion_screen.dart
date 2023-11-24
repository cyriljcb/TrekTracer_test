import 'package:flutter/material.dart';
import 'package:test_trek_tracer/screens/register_screen.dart';
import 'package:test_trek_tracer/screens/welcome_screen.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_trek_tracer/style/colors.dart';

import '../delayed_animation.dart';
import '../login_button.dart';
import '../style/font.dart';
import '../style/spacings.dart';

class ConnexionScreen extends StatelessWidget {
  static const routeName = '/connexion';

  const ConnexionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBlueColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
          color: Colors.white60,
          size: 30,),
          onPressed: () {
            Navigator.pushNamed(context, WelcomeScreen.routeName);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kVerticalPaddingL),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DelayedAnimation(
                  delay: 1000,
                  child: ClipOval(
                    child: Image.asset(
                      "asset/icons/logo2.png",
                      width: kProfileSize * 1.5,
                    ),
                  )),
              const SizedBox(
                width: kHorizontalPaddingXL,
              ),
              DelayedAnimation(
                  delay: 1500,
                  child: Image.asset(
                    "asset/img/coureur1.png",
                    width: kProfileSize ,
                  )),
              const Column(
                children: [
                  DelayedAnimation(delay: 2500, child: LoginButton())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
