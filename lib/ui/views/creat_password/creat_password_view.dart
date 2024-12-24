import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_buttom_containar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_textformfield.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/creat_password/creat_password_controller.dart';

class creatPasswordView extends StatefulWidget {
  const creatPasswordView({super.key});

  @override
  State<creatPasswordView> createState() => _creatPasswordViewState();
}

class _creatPasswordViewState extends State<creatPasswordView> {
  creatPasswordController controller = creatPasswordController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          leftonTap: () {
            Get.back();
          },
          lefticon: Icons.arrow_back_ios_new_rounded,
          text: 'Create New Password',
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
                    'A strong password has combination of letter and numbers and special characters like \$,!,%, etc.',
                styletype: StyleOfText.SMALL,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: screenWidth(10), bottom: screenWidth(10)),
                child: Obx(
                  () => CustomTextFormField(
                    text: 'Password',
                    showpassword: true,
                    onTap: () {
                      controller.isvisablepassword.value =
                          !controller.isvisablepassword.value;
                    },
                    isvisable: controller.isvisablepassword.value,
                  ),
                ),
              ),
              Obx(
                () => CustomTextFormField(
                  text: 'Confirm Password',
                  showpassword: true,
                  onTap: () {
                    controller.isvisableconfirmpassword.value =
                        !controller.isvisableconfirmpassword.value;
                  },
                  isvisable: controller.isvisableconfirmpassword.value,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: screenWidth(4), bottom: screenWidth(3)),
                child: CustomButtomContainer(
                  ontap: () {},
                  textButtom: 'Save',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
