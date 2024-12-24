import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_drawer/custom_drawer.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/block_list/block_list_view.dart';
import 'package:momento_app/ui/views/settings/custom_div_text.dart';
import 'package:momento_app/ui/views/settings/custom_row_icon.dart';
import 'package:momento_app/ui/views/settings/custom_switch%20_text.dart';
import 'package:momento_app/ui/views/settings/sitteng_controller.dart';

class SittengsView extends StatefulWidget {
  const SittengsView({super.key});

  @override
  State<SittengsView> createState() => _SittengsViewState();
}

class _SittengsViewState extends State<SittengsView> {
  final SittengController controller = Get.put(SittengController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: controller.scafolldKey,
        appBar: CustomAppbar(
          text: 'Settings',
          lefticon: Icons.menu,
          leftonTap: () {
            controller.scafolldKey.currentState?.openDrawer();
          },
        ),
        drawer: CustomDrawe(
          textname: 'Cristiano Ronaldo',
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.only(
              top: screenWidth(15),
              end: screenWidth(30),
              start: screenWidth(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: screenWidth(15)),
                child: CustomDivText(
                  text: 'Feed Settings',
                ),
              ),
              Obx(
                () => CustomSwitchText(
                  value: controller.Change.value, // Observing the value
                  onChanged: (value) {
                    controller.Change.value = value; // Updating the observable
                  },
                  titletext: 'Show relevant first',
                  subtitletext: 'Showing posts by their popularity',
                ),
              ),
              Obx(
                () => Padding(
                  padding: EdgeInsetsDirectional.only(top: screenWidth(15)),
                  child: CustomSwitchText(
                    value: controller.Change.value, // Observing the value
                    onChanged: (value) {
                      controller.Change.value =
                          value; // Updating the observable
                    },
                    titletext: 'Optimize Images to Save Data ',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    bottom: screenWidth(15), top: screenWidth(15)),
                child: CustomDivText(text: 'Account Settings'),
              ),
              Obx(
                () => Padding(
                  padding: EdgeInsetsDirectional.only(bottom: screenWidth(15)),
                  child: CustomSwitchText(
                    value: controller.Change.value, // Observing the value
                    onChanged: (value) {
                      controller.Change.value =
                          value; // Updating the observable
                    },
                    titletext: 'Private Account',
                    subtitletext: 'People will seek permission to follow you',
                  ),
                ),
              ),
              Obx(
                () => CustomSwitchText(
                  value: controller.Change.value, // Observing the value
                  onChanged: (value) {
                    controller.Change.value = value; // Updating the observable
                  },
                  titletext: 'Allow Saving',
                  subtitletext: 'People can save your posts to their profile',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    bottom: screenWidth(15), top: screenWidth(15)),
                child: CustomRowIcon(
                    text: 'Block List',
                    onTap: () {
                      Get.to(BlockListView());
                    }),
              ),
              CustomRowIcon(text: 'Delete Account', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
