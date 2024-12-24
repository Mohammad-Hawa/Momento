import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';

class CustomInfo extends StatelessWidget {
  final String number;
  final String text;
  const CustomInfo({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: number,
          textcolor: const Color.fromARGB(255, 221, 1, 4),
        ),
        CustomText(
          styletype: StyleOfText.SMALL,
          text: text,
        ),
      ],
    );
  }
}
