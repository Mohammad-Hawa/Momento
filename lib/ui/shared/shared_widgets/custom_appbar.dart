import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/utils.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final IconData lefticon;
  final IconData? righticon;
  final Function? leftonTap;
  final Function? rightonTap;

  CustomAppbar({
    super.key,
    required this.text,
    required this.lefticon,
    this.righticon,
    this.leftonTap,
    this.rightonTap,
  });

  Size get preferredSize => Size.fromHeight(screenHeight(1));
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
          top: screenWidth(25), start: screenWidth(25), end: screenWidth(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              leftonTap!();
            },
            child: Icon(
              lefticon,
              size: screenWidth(12),
              color: Appcolor.Blackcolor.withOpacity(0.7),
            ),
          ),
          CustomText(
            text: text,
            styletype: StyleOfText.SUBTITLE,
            fontWeight: FontWeight.normal,
          ),
          IconButton(
            onPressed: () {
              rightonTap!();
            },
            icon: Icon(
              color: Appcolor.Blackcolor.withOpacity(0.7),
              righticon,
              size: screenWidth(10),
            ),
          )
        ],
      ),
    );
  }
}
