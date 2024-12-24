import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_buttom_containar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_pinktext.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/intro/intro-view.dart';
import 'package:momento_app/ui/views/login/login_view.dart';
import 'package:momento_app/ui/views/signup/signup_view.dart';

class SignOutView extends StatefulWidget {
  const SignOutView({super.key});

  @override
  State<SignOutView> createState() => _SignOutViewState();
}

class _SignOutViewState extends State<SignOutView> {
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
                text: 'GOODBY !',
                styletype: StyleOfText.TITLE,
              ),
            ),
            CustomText(
              iscentr: true,
              text:
                  'Account once deleted cannot be restored later. We delete all your data from our servers',
              styletype: StyleOfText.SMALL,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(4), bottom: screenWidth(3)),
              child: CustomButtomContainer(
                ontap: () {
                  Get.to(LoginView());
                },
                textButtom: 'Delete My Account',
              ),
            ),
            CustomPinktext(
              onTap: () {
                Get.offAll(IntroView());
              },
              text: 'Hope we meet in another world!',
            ),
          ],
        ),
      ),
    ));
  }
}
