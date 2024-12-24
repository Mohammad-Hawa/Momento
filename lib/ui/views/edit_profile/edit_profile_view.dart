import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_buttom_containar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_textformfield.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/edit_profile/edit_profile_controller.dart';
import 'package:momento_app/ui/views/feed/feed_view.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  EditProfileController controller = EditProfileController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                  'Hey! We need few details from you before you start sharing on Momento',
              styletype: StyleOfText.SMALL,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(15), bottom: screenWidth(15)),
              child: CustomTextFormField(
                controller: controller.namecontroller,
                text: 'Full Name',
              ),
            ),
            CustomTextFormField(
              onTap: () {
                controller.selectdate(context);
              },
              showpassword: true,
              icon: Icons.date_range_outlined,
              text: 'Date of Birth',
              controller: controller.datecontroller,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(15), bottom: screenWidth(15)),
              child: CustomTextFormField(
                text: 'Gender',
              ),
            ),
            CustomTextFormField(
              showpassword: true,
              icon: Icons.location_on_outlined,
              text: 'Location',
              controller: controller.locationcontroller,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(15), bottom: screenWidth(10)),
              child: CustomTextFormField(
                controller: controller.aboutmecontroller,
                text: 'About Me',
              ),
            ),
            CustomButtomContainer(
              ontap: () {
                Get.to(FeedView());
              },
              textButtom: 'Get Set Go!',
            ),
          ],
        ),
      ),
    ));
  }
}
