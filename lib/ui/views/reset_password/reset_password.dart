import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_buttom_containar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_textformfield.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/creat_password/creat_password_view.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          leftonTap: () {
            Get.back();
          },
          lefticon: Icons.arrow_back_ios_new_rounded,
          text: 'Reset Password',
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
                    'No Problem! Just give in your Email ID and we will send you a link to reset your password',
                styletype: StyleOfText.SMALL,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: screenWidth(10), bottom: screenWidth(5)),
                child: CustomTextFormField(
                  text: 'Email ID',
                ),
              ),
              CustomButtomContainer(
                ontap: () {
                  Get.to(creatPasswordView());
                },
                textButtom: 'Send Link',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
