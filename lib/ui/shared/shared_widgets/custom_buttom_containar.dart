import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/utils.dart';


class CustomButtomContainer extends StatelessWidget {
  final Function()? ontap;
  final String textButtom;
  CustomButtomContainer({super.key, this.ontap, required this.textButtom});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap!();
      },
      child: Container(
        alignment: Alignment.center,
        width: screenWidth(1.2),
        height: screenWidth(7.5),
        decoration: BoxDecoration(
            color: Appcolor.Pinkcolor, borderRadius: BorderRadius.circular(8)),
        child: CustomText(
          text: textButtom,
          textcolor: Appcolor.whitecolor,
          styletype: StyleOfText.SMALL,
        ),
      ),
    );
  }
}
