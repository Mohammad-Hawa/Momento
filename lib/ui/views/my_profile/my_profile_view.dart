import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_drawer/custom_drawer.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_float_button.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/edit_profile/edit_profile_view.dart';
import 'package:momento_app/ui/views/my_profile/custom_feed_profile.dart';
import 'package:momento_app/ui/views/my_profile/custom_info.dart';
import 'package:momento_app/ui/views/my_profile/my_profile_controller.dart';

class MyProfileView extends StatefulWidget {
  const MyProfileView({super.key});

  @override
  State<MyProfileView> createState() => _MyProfileViewState();
}

class _MyProfileViewState extends State<MyProfileView> {
  MyProfileControoler controller = Get.put(MyProfileControoler());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: CustomDrawe(
        textname: 'Cristiano Ronaldo',
      ),
      key: controller.scaffoldKey,
      appBar: CustomAppbar(
        text: 'You',
        lefticon: Icons.menu,
        leftonTap: () {
          controller.scaffoldKey.currentState?.openDrawer();
        },
        righticon: Icons.edit_note_rounded,
        rightonTap: () {
          Get.to(EditProfileView());
        },
      ),
      floatingActionButton: CustomFloatButton(
        ontap: () async {
          pickeimage(imageSource: ImageSource.camera);
        },
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: screenWidth(25)),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: screenWidth(25)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(
                        end: screenWidth(60), start: screenWidth(25)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                       'assets/photo/png/CR7.png',
                        width: screenWidth(6),
                        height: screenWidth(6),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  CustomText(
                    text: 'Cristiano Ronaldo',
                    styletype: StyleOfText.BODY,
                  ),
                ],
              ),
            ),
            Divider(
              color: Appcolor.Blackcolor,
              thickness: 0.5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: screenWidth(12), bottom: screenWidth(25)),
                  child: CustomText(text: 'Stats'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomInfo(number: '6', text: 'Moments'),
                    CustomInfo(number: '16', text: 'Followers'),
                    CustomInfo(number: '34', text: 'Following')
                  ],
                )
              ],
            ),
            Divider(
              color: Appcolor.Blackcolor,
              thickness: 0.5,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: screenWidth(25)),
              child: CustomText(text: 'Moments'),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(25),
                  start: screenWidth(25),
                  end: screenWidth(25)),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: screenWidth(25),
                // childAspectRatio: 0.7,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return CustomFeedProfile();
              },
            )
          ],
        ),
      ),
    ));
  }
}
