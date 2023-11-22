import 'package:flutter/material.dart';
import 'package:test_trek_tracer/delayed_animation.dart';
import 'package:test_trek_tracer/rounded_button.dart';
import 'package:test_trek_tracer/screens/register_screen.dart';

import '../main_button.dart';
import '../style/font.dart';
import '../style/spacings.dart';
import 'connexion_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF262D37),
      body : Container(
        margin: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 30,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/img/dark_blue.png"),
            fit: BoxFit.cover,
          ),

        ),

        child: SafeArea(
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
                      width: kProfileSize * 2,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DelayedAnimation(
                        delay: 2000,
                        child: RoundedButton(text: "GOOOO!!!!!", onPressed: (){
                          Navigator.pushNamed(context, ConnexionScreen.routeName);
                        }),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
