import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_buttom_containar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_pinktext.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_textformfield.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/feed/feed_view.dart';
import 'package:momento_app/ui/views/login/login_controller.dart';
import 'package:momento_app/ui/views/reset_password/reset_password.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  loginController controller = loginController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          leftonTap: () {
            Get.back();
          },
          lefticon: Icons.arrow_back_ios_new_rounded,
          text: 'Sign In',
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.only(
              top: screenWidth(3),
              end: screenWidth(25),
              start: screenWidth(25)),
          child: Column(
            children: [
              CustomText(
                text:
                    'Type in your Email ID and Password you chose for Momento and click Go to Feed',
                styletype: StyleOfText.SMALL,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: screenWidth(10), bottom: screenWidth(10)),
                child: CustomTextFormField(
                  text: 'Email ID',
                ),
              ),
              CustomTextFormField(
                text: 'Password',
                showpassword: true,
                onTap: () {
                  controller.isvisable.value = !controller.isvisable.value;
                },
                isvisable: controller.isvisable.value,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: screenWidth(4), bottom: screenWidth(3)),
                child: CustomButtomContainer(
                  ontap: () {
                    Get.to(FeedView());
                  },
                  textButtom: 'Go to Feed',
                ),
              ),
              CustomPinktext(
                onTap: () {
                  Get.to(ResetPasswordView());
                },
                text: 'Can’t Sign In? Reset Password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
