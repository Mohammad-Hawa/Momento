import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';

class CustomDivText extends StatelessWidget {
  final String text;
  final bool? islin;
  const CustomDivText({super.key, required this.text, this.islin = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: text),
        islin! ? Divider() : SizedBox(),
      ],
    );
  }
}
