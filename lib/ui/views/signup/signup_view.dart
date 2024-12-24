import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_buttom_containar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_textformfield.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/Setup_Profile/Setup_Profile.dart';
import 'package:momento_app/ui/views/login/login_view.dart';
import 'package:momento_app/ui/views/signup/signup_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  SignUpController controller = SignUpController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppbar(
          leftonTap: () {
            Get.back();
          },
          lefticon: Icons.arrow_back_ios_new_rounded,
          text: 'Create Account',
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.only(
            top: screenWidth(5),
            end: screenWidth(25),
            start: screenWidth(25),
          ),
          child: Column(
            children: [
              CustomText(
                text:
                    'Fill in the required details and click Proceed.Fields marked * are mandatory',
                styletype: StyleOfText.SMALL,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: screenWidth(10), bottom: screenWidth(10)),
                child: CustomTextFormField(
                  text: 'Email ID',
                  controller: controller.emailcontroller,
                ),
              ),
              CustomTextFormField(
                text: 'Password',
                showpassword: true,
                onTap: () {
                  controller.isvisable.value = !controller.isvisable.value;
                },
                isvisable: controller.isvisable.value,
                controller: controller.passwordcontroller,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: screenWidth(10), bottom: screenWidth(10)),
                child: CustomTextFormField(
                  text: 'Confirm Password',
                  showpassword: true,
                  onTap: () {
                    controller.isvisable.value = !controller.isvisable.value;
                  },
                  isvisable: controller.isvisable.value,
                  controller: controller.confiermpasswordcontroller,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: screenWidth(10)),
                child: RichText(
                  maxLines: 2,
                  text: TextSpan(
                    text:
                        'By Creating Account, you are automatically accepting all the ',
                    style: TextStyle(
                      color: Appcolor.Blackcolor,
                      fontSize: screenWidth(24),
                    ),
                    children: [
                      TextSpan(
                        onEnter: (event) {
                          Get.to(LoginView());
                        },
                        text: 'Terms & Conditions',
                        style: TextStyle(
                          fontSize: screenWidth(24),
                          color: Appcolor.Pinkcolor,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' related to Momento',
                        style: TextStyle(
                          fontSize: screenWidth(24),
                          color: Appcolor.Blackcolor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomButtomContainer(
                ontap: () {
                  Get.to(SetupProfileView());
                  // controller.Signup();
                },
                textButtom: 'Proceed',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
