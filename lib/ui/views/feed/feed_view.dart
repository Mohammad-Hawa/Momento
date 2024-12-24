import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:momento_app/core/model/user_model.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_drawer/custom_drawer.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_float_button.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/feed/custom_feed.dart';
import 'package:momento_app/ui/views/feed/feed_controoler.dart';
import 'package:momento_app/ui/views/feed_detail/feed_detail_view.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  FeedController controller = Get.put(FeedController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKey,
        drawer: CustomDrawe(
          textname: 'Cristiano Ronaldo',
        ),
        appBar: CustomAppbar(
          text: 'My Feed',
          lefticon: Icons.menu,
          leftonTap: () {
            controller.scaffoldKey.currentState?.openDrawer();
          },
          righticon: Icons.search_rounded,
        ),
        floatingActionButton: CustomFloatButton(
          ontap: () async {
            pickeimage(imageSource: ImageSource.camera);
          },
        ),
        body: ListView.builder(
          padding: EdgeInsetsDirectional.only(top: screenWidth(25)),
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Obx(
              () => InkWell(
                onTap: () {
                  Get.to(FeedDetailView());
                },
                child: CustomFeed(
                  photo: users[index].photo,

                  // مراقبة حالة الفافوريت لكل عنصر في القائمة
                  isfav: controller.isFavoriteList[index].value,
                  ontap: () {
                    // عكس حالة الفافوريت عند النقر
                    controller.isFavoriteList[index].value =
                        !controller.isFavoriteList[index].value;
                  },
                  timeoffeed: users[index].time,
                  nameofperson: users[index].name,
                  image: users[index].photo,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
