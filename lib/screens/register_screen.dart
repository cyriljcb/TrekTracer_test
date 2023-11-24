import 'package:flutter/material.dart';
import 'package:test_trek_tracer/delayed_animation.dart';
import 'package:test_trek_tracer/style/colors.dart';
import 'package:test_trek_tracer/style/spacings.dart';
import 'package:test_trek_tracer/text_input.dart';

import '../style/font.dart';
import 'home_screen.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register';
  final bool isLogin;

  const RegisterScreen({super.key, this.isLogin = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF262D37),
      body: SizedBox(
        width: MediaQuery.of(context).size.width, //pour récup taille écran
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: kVerticalPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(!isLogin)
                  Column(
                    children: [
                      DelayedAnimation(delay: 1000, child: TextInput(
                        prefixIcon: Icons.person,
                        hintText: 'Entrez votre nom d\'utilisateur',

                        labelText: 'Nom d\'utilisateur',
                        validator: (String? value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Veuillez renseigner votre prénom!';
                          }
                          return null;
                        },
                      ),),
                    ],
                  ),
                DelayedAnimation(
                  delay: isLogin ? 1000:2000,
                  child: TextInput(
                    prefixIcon: Icons.person,
                    hintText: 'entrez votre adresse email',
                    labelText: 'Email',
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Veuillez renseigner votre adresse Email!';
                      }
                      return null;
                    },
                  ),
                ),
                DelayedAnimation(
                  delay: isLogin ? 1500:2500,
                  child: TextInput(
                    prefixIcon: Icons.lock,
                    hintText: 'entrez votre mot de passe',
                    labelText: 'Mot de passe',
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Veuillez renseigner votre mot de passe!';
                      }
                      return null;
                    },
                  ),
                ),
                DelayedAnimation(delay: isLogin ? 2000:2500,
                  child: ElevatedButton(onPressed: () {Navigator.pushNamed(context, HomeScreen.routeName, arguments: {'isLogin': true});}, style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: kButtonColor,
                    padding: const EdgeInsets.all(13),
                  ), child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Text('connexion',
                        style: kLabelButton,)
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("TrekTracer"),
        backgroundColor: kButtonColor,
      ),
    );
  }
}
