import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/utils.dart';

class CustomAatarAndName extends StatelessWidget {
  final String image;
  final String nameofperson;
  final String timeoffeed;
  final bool iscolumn;
  const CustomAatarAndName(
      {super.key,
      required this.image,
      required this.nameofperson,
      required this.timeoffeed,
      this.iscolumn = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(end: screenWidth(60)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              image,
              width: screenWidth(8),
              height: screenWidth(8),
              fit: BoxFit.fill,
            ),
          ),
        ),
        iscolumn
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: nameofperson,
                    styletype: StyleOfText.BODY,
                  ),
                  CustomText(
                    text: timeoffeed,
                    styletype: StyleOfText.SMALL,
                  )
                ],
              )
            : Row(
                children: [
                  CustomText(
                    text: nameofperson,
                    styletype: StyleOfText.BODY,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: screenWidth(5)),
                    child: CustomText(
                      text: timeoffeed,
                      styletype: StyleOfText.SMALL,
                    ),
                  )
                ],
              )
      ],
    );
  }
}
