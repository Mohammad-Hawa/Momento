import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/utils.dart';

class CustomRowBlock extends StatelessWidget {
  final String text;
  final String image;
  CustomRowBlock({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              image,
              width: screenWidth(7),
              height: screenWidth(7),
              fit: BoxFit.fill,
            ),
          ),
        ),
        CustomText(
          text: text,
          styletype: StyleOfText.BODY,
        ),
      ],
    );
  }
}
