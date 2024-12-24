import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_drawer/item_drawe.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/Saved_by_me/Saved_by_me_view.dart';
import 'package:momento_app/ui/views/about_momento/about_momento_view.dart';
import 'package:momento_app/ui/views/chat/caht_recent_view/chat_recent_view.dart';
import 'package:momento_app/ui/views/my_profile/my_profile_view.dart';
import 'package:momento_app/ui/views/settings/settings_view.dart';
import 'package:momento_app/ui/views/signout/signout_view.dart';

class CustomDrawe extends StatelessWidget {
  final String textname;
  CustomDrawe({super.key, required this.textname});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: screenWidth(6)),
      color: Appcolor.whitecolor,
      width: screenWidth(1.3),
      height: screenHeight(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
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
                    width: screenWidth(4),
                    height: screenHeight(8),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              CustomText(
                text: textname,
                styletype: StyleOfText.BODY,
              ),
            ],
          ),
          Divider(
            color: Appcolor.Blackcolor,
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: screenWidth(35)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: screenWidth(12), bottom: screenWidth(12)),
                  child: ItemDrwer(
                    icon: Icons.person_outline,
                    text: 'My Profile',
                    ontap: () {
                      Get.to(MyProfileView());
                    },
                  ),
                ),
                ItemDrwer(
                  icon: Icons.forum_outlined,
                  text: 'Chats',
                  ontap: () {
                    Get.to(ChatRecentView());
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: screenWidth(12), bottom: screenWidth(12)),
                  child: ItemDrwer(
                    icon: Icons.download_for_offline_outlined,
                    text: 'Saved by me',
                    ontap: () {
                      Get.to(SavedByMeView());
                    },
                  ),
                ),
                ItemDrwer(
                  icon: Icons.settings,
                  text: 'Settings',
                  ontap: () {
                    Get.back();
                    Get.to(SittengsView());
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: screenWidth(12), bottom: screenWidth(12)),
                  child: ItemDrwer(
                    icon: Icons.info_outline,
                    text: 'About Momento',
                    ontap: () {
                      Get.back();
                      Get.to(AboutMomentoView());
                    },
                  ),
                ),
                ItemDrwer(
                  icon: Icons.logout_outlined,
                  text: 'Sign Out',
                  ontap: () {
                    Get.back();

                    Get.to(SignOutView());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
