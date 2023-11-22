import 'package:flutter/material.dart';
import 'package:test_trek_tracer/screens/register_screen.dart';
import 'package:test_trek_tracer/style/colors.dart';
import 'package:test_trek_tracer/style/font.dart';
import 'package:test_trek_tracer/style/spacings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: kVerticalPadding, horizontal: kHorizontalPadding),
      child: Column(
        children: [
          ElevatedButton(onPressed: () {Navigator.pushNamed(context, RegisterScreen.routeName, arguments: {'isLogin': true});}, style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: kButtonColor,
            padding: const EdgeInsets.all(13),
          ), child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mail_outline_outlined,color: Colors.white),
              SizedBox(width: 10,),
              Text('Email',
              style: kLabelButton,)
            ],
          )),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: () {

                //                 arguments: {'isLogin': true});
          }, style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: Colors.blueAccent,
            padding: const EdgeInsets.all(13),
          ), child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.facebook,color: Colors.white),
              SizedBox(width: 10,),
              Text('Facebook',
              style: kLabelButton,)
            ],
          )),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: Colors.white60,
            padding: const EdgeInsets.all(13),
          ), child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/icons/google.png',height: 20,),
              const SizedBox(width: 10,),
              const Text('Google',
                style: kGoogleFont,
              )
            ],
          )),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
