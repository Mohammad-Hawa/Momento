import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/utils.dart';

enum StyleOfText {
  TITLE, //16
  SUBTITLE, //14
  BODY, //12
  SMALL, //10
}

class CustomText extends StatelessWidget {
  final Color? textcolor;
  final bool? isundelin;
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final StyleOfText? styletype; // Updated to StyleOfText
  final int? maxLines;
  final bool? iscentr;
  CustomText({
    super.key,
    required this.text,
    this.size,
    this.fontWeight,
    this.styletype,
    this.maxLines,
    this.textcolor,
    this.isundelin = false,
    this.iscentr = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: iscentr! ? TextAlign.center : TextAlign.left,
      text,
      style: styleoftext(),
      maxLines: maxLines,
    );
  }

  TextStyle styleoftext() {
    TextStyle result = TextStyle();
    switch (styletype) {
      case StyleOfText.TITLE:
        result = TextStyle(
          fontFamily: 'Lora',
          decoration:
              isundelin! ? TextDecoration.underline : TextDecoration.none,
          decorationColor:
              isundelin! ? Appcolor.Pinkcolor : Appcolor.whitecolor,
          fontSize: size ?? screenWidth(12), // default size for TITLE
          fontWeight: fontWeight ?? FontWeight.bold,
          color: textcolor ?? Appcolor.Blackcolor,
        );
        break;
      case StyleOfText.SUBTITLE:
        result = TextStyle(
          fontFamily: 'Lora',
          decoration:
              isundelin! ? TextDecoration.underline : TextDecoration.none,
          decorationColor:
              isundelin! ? Appcolor.Pinkcolor : Appcolor.whitecolor,
          fontSize: size ?? screenWidth(16), // default size for SUBTITLE
          fontWeight: fontWeight ?? FontWeight.w500,
          color: textcolor ?? Appcolor.Blackcolor,
        );
        break;
      case StyleOfText.BODY:
        result = TextStyle(
          fontFamily: 'Lora',
          decoration:
              isundelin! ? TextDecoration.underline : TextDecoration.none,
          decorationColor:
              isundelin! ? Appcolor.Pinkcolor : Appcolor.whitecolor,
          fontSize: size ?? screenWidth(24), // default size for BODY
          fontWeight: fontWeight ?? FontWeight.normal,
          color: Appcolor.Blackcolor,
        );
        break;
      case StyleOfText.SMALL:
        result = TextStyle(
          fontFamily: 'Lora',
          decoration:
              isundelin! ? TextDecoration.underline : TextDecoration.none,
          decorationColor:
              isundelin! ? Appcolor.Pinkcolor : Appcolor.whitecolor,
          fontSize: size ?? screenWidth(26), // default size for SMALL
          fontWeight: fontWeight ?? FontWeight.w300,
          color: textcolor ?? Appcolor.Blackcolor,
        );
        break;
      default:
        result = TextStyle(
          fontFamily: 'Lora',
          decoration:
              isundelin! ? TextDecoration.underline : TextDecoration.none,
          decorationColor:
              isundelin! ? Appcolor.Pinkcolor : Appcolor.whitecolor,
          fontSize: size,
          fontWeight: fontWeight,
          color: textcolor ?? Appcolor.Blackcolor,
        );
        break;
    }
    return result;
  }
}
