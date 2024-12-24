import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_drawer/custom_drawer.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/Saved_by_me/Saved_by_me_controller.dart';
import 'package:momento_app/ui/views/feed_detail/feed_detail_view.dart';
import 'package:momento_app/ui/views/my_profile/custom_feed_profile.dart';

class SavedByMeView extends StatelessWidget {
  SavedByMeView({super.key});

  SavedByMeController controller = Get.put(SavedByMeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: CustomDrawe(
        textname: 'Cristiano Ronaldo',
      ),
      key: controller.scaffoldKey,
      appBar: CustomAppbar(
        text: 'Saved by me',
        lefticon: Icons.menu,
        leftonTap: () {
          controller.scaffoldKey.currentState?.openDrawer();
        },
      ),
      body: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsetsDirectional.only(
            top: screenWidth(25), start: screenWidth(25), end: screenWidth(25)),
        shrinkWrap: true,
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: screenWidth(25),
          // childAspectRatio: 0.7,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Get.to(FeedDetailView());
              },
              child: CustomFeedProfile());
        },
      ),
    ));
  }
}
