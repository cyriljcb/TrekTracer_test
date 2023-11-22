import 'package:flutter/material.dart';
import 'package:test_trek_tracer/style/colors.dart';
import 'package:test_trek_tracer/style/font.dart';
import 'package:test_trek_tracer/style/spacings.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isMain;

  const MainButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isMain = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: kVerticalPaddingS,
          horizontal: kHorizontalPaddingS,
        ),
        decoration: BoxDecoration(
          color: isMain ? kMainColor : kButtonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: isMain ? kButtonStyle : kButtonStyle,
        ),
      ),
    );
  }
}
