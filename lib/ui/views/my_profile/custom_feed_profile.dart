import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/utils.dart';

class CustomFeedProfile extends StatelessWidget {
  CustomFeedProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: screenWidth(25)),
      decoration: BoxDecoration(
          color: Appcolor.grycolor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(4)),
      height: screenHeight(6),
      alignment: AlignmentDirectional.center,
      child: Icon(
        Icons.photo_size_select_actual_outlined,
        color: Appcolor.Pinkcolor,
        size: screenWidth(6),
      ),
    );
  }
}
