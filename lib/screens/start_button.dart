import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final String text;
  // final Function onTap;
  final bool adem;

  const StartButton({
    super.key,
    required this.text,
    //required this.onTap,
    this.adem = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        decoration: const BoxDecoration(
          color: Colors.cyan,
          shape: BoxShape.circle,
        ),
        child: const Text("demarrer"),
      ),
    );
  }
}
