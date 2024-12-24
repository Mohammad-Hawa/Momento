import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/utils.dart';

class ItemDrwer extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function ontap;
  ItemDrwer(
      {super.key, required this.icon, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap();
      },
      child: Row(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: screenWidth(35)),
            child: Icon(icon),
          ),
          CustomText(text: text),
        ],
      ),
    );
  }
}
