import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';

class CustomRowIcon extends StatelessWidget {
  final String text;
  final Function onTap;
  const CustomRowIcon({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: text),
          Icon(
            Icons.arrow_forward_ios_rounded,
          )
        ],
      ),
    );
  }
}
