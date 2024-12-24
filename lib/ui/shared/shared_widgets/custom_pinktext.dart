import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';


class CustomPinktext extends StatelessWidget {
  final String text;
  final bool? isunderlin;
  final Function()? onTap;
  CustomPinktext(
      {super.key, required this.text, this.isunderlin = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: CustomText(
        isundelin: isunderlin,
        text: text,
        styletype: StyleOfText.SMALL,
        textcolor: Appcolor.Pinkcolor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
