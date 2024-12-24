import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_buttom_containar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_pinktext.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/login/login_view.dart';
import 'package:momento_app/ui/views/signup/signup_view.dart';

class AboutMomentoView extends StatefulWidget {
  const AboutMomentoView({super.key});

  @override
  State<AboutMomentoView> createState() => _AboutMomentoViewState();
}

class _AboutMomentoViewState extends State<AboutMomentoView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(
            top: screenWidth(10), end: screenWidth(15), start: screenWidth(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/photo/Group 2.png', width: screenWidth(3)),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(6), bottom: screenWidth(15)),
              child: CustomText(
                text: 'MOMENTO',
                styletype: StyleOfText.TITLE,
              ),
            ),
            CustomText(
              iscentr: true,
              text:
                  'Momento is a social app that lets you share your\n moments with friends',
              styletype: StyleOfText.SMALL,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: screenWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    iscentr: true,
                    text: 'App Version',
                    styletype: StyleOfText.SUBTITLE,
                  ),
                  CustomText(
                    iscentr: true,
                    text: '1.0.1',
                    styletype: StyleOfText.SMALL,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  bottom: screenWidth(2), top: screenWidth(15)),
              child: CustomText(
                iscentr: true,
                text:
                    'Momento is a registered trademark of the Momento Inc. registered in SYR',
                styletype: StyleOfText.SMALL,
              ),
            ),
            CustomPinktext(text: 'Terms & Conditions'),
          ],
        ),
      ),
    ));
  }
}
