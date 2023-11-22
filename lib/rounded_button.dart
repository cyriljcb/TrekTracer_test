import 'package:flutter/material.dart';
import 'package:test_trek_tracer/style/colors.dart';
import 'package:test_trek_tracer/style/font.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kButtonColor,
          shape: const StadiumBorder(),
          padding: const EdgeInsets.all(13),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: kLabelStyle,
        ),
      ),
    );
  }
}
