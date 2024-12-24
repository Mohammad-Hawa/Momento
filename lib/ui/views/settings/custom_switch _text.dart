import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/utils.dart';

class CustomSwitchText extends StatelessWidget {
  final bool value;
  final Function(bool)? onChanged;
  final String titletext;
  final String? subtitletext;

  CustomSwitchText({
    super.key,
    required this.value,
    this.onChanged,
    required this.titletext,
    this.subtitletext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: titletext,
              styletype: StyleOfText.SUBTITLE,
              size: screenWidth(22),
              fontWeight: FontWeight.normal,
            ),
            CustomText(
              text: subtitletext ?? "",
              styletype: StyleOfText.SMALL,
            ),
          ],
        ),
        Switch(
          activeColor: Appcolor.Pinkcolor,
          value: value,
          onChanged: (Value) {
            onChanged!(Value);
          },
        ),
      ],
    );
  }
}
