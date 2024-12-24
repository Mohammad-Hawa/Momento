import 'package:emoji_picker_flutter/emoji_picker_flutter.dart'; // مكتبة لوحة الإيموجي
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:momento_app/core/model/user_model.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_avatar_name.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/feed_detail/comment_feed.dart';
import 'package:momento_app/ui/views/feed_detail/feed_detail_controller.dart';

class FeedDetailView extends StatefulWidget {
  const FeedDetailView({super.key});

  @override
  State<FeedDetailView> createState() => _FeedDetailViewState();
}

class _FeedDetailViewState extends State<FeedDetailView> {
  FeedDetailController controller = Get.put(FeedDetailController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          text: 'Cristiano’s Moment',
          lefticon: Icons.arrow_back_ios_new_rounded,
          leftonTap: () {
            Get.back();
          },
        ),
        body: Stack(
          children: [
            NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Padding(
                        padding:
                            EdgeInsetsDirectional.only(top: screenWidth(25)),
                        child: CustomAatarAndName(
                          timeoffeed: '10 mins ago',
                          nameofperson: 'Cristiano Ronaldo',
                          image: 'assets/photo/png/CR7.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.symmetric(
                            horizontal: screenWidth(25),
                            vertical: screenWidth(25)),
                        decoration: BoxDecoration(
                            color: Appcolor.grycolor,
                            borderRadius: BorderRadius.circular(4)),
                        height: screenHeight(2),
                        width: screenWidth(3),
                        alignment: AlignmentDirectional.center,
                        child: Icon(
                          Icons.photo_size_select_actual_outlined,
                          color: Appcolor.Pinkcolor,
                          size: screenWidth(6),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.symmetric(
                          horizontal: screenWidth(29),
                        ),
                        child: CustomText(
                          text:
                              'It was a humorously perilous business for both of us. For, before we proceed further',
                          styletype: StyleOfText.SMALL,
                        ),
                      ),
                      IntrinsicHeight(
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        LikeButton(
                                          size: screenWidth(14),
                                          onTap: (isLiked) async {
                                            // إذا تم الضغط على الإعجاب
                                            if (controller.isfav.value) {
                                              // إذا كان المستخدم قد أعجب المنشور مسبقًا، نقوم بتقليل عدد الإعجابات
                                              controller.numlike.value--;
                                            } else {
                                              // إذا لم يكن قد أعجب المنشور، نقوم بزيادة عدد الإعجابات
                                              controller.numlike.value++;
                                            }
                                            // تغيير حالة الإعجاب
                                            controller.isfav.value =
                                                !controller.isfav.value;
                                            return controller.isfav.value;
                                          },
                                          likeBuilder: (bool isLiked) {
                                            return Icon(
                                              Icons.favorite,
                                              color: isLiked
                                                  ? Colors.red
                                                  : Appcolor.grycolor,
                                            );
                                          },
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.only(
                                              start: screenWidth(25)),
                                          child: Obx(() =>
                                              Text('${controller.numlike}')),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.share_outlined,
                                          ),
                                          iconSize: screenWidth(14),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.only(
                                              start: screenWidth(25)),
                                          child: Text('214'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(),
                              ],
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: VerticalDivider(
                                indent: screenWidth(45),
                                endIndent: screenWidth(45),
                                thickness: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: screenWidth(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      end: screenWidth(25)),
                                  child: CustomText(
                                    text: '214',
                                    fontWeight: FontWeight.w400,
                                    styletype: StyleOfText.SMALL,
                                  ),
                                ),
                                CustomText(
                                  fontWeight: FontWeight.w400,
                                  text: 'Comments',
                                  styletype: StyleOfText.SMALL,
                                ),
                              ],
                            ),
                            CustomText(
                              text: 'View All',
                              textcolor: Appcolor.Pinkcolor,
                              isundelin: true,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ];
              },
              body: ListView.builder(
                padding: EdgeInsetsDirectional.only(
                  top: screenWidth(15),
                  start: screenWidth(35),
                  end: screenWidth(35),
                ),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.only(bottom: screenWidth(25)),
                    child: CommentFeed(
                      textcomment:
                          'It was a humorously perilous business for both of us. For, before we proceed further',
                      timeoffeed: '10 mins ago',
                      nameofperson: 'Cristiano Ronaldo',
                      image: users[index].photo,
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                height: screenHeight(15),
                width: screenWidth(1),
                decoration: BoxDecoration(
                  color: Appcolor.whitecolor,
                  boxShadow: [
                    BoxShadow(
                      color: Appcolor.Blackcolor,
                      blurRadius: 2,
                      offset: Offset(4, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        onTap: () {
                          controller.isEmojiPickerVisible.value = false;  
                        },
                        focusNode: controller.focus,
                        controller: controller.fieldcontrooler,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontFamily: 'Lora',
                          ),
                          hintText: 'Write Comment…',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.emoji_emotions_outlined),
                      onPressed: () {
                        controller.focus.unfocus();
                        controller.focus.canRequestFocus = true;
                        controller
                            .toggleEmojiPicker(); // استدعاء الدالة لتبديل حالة لوحة الإيموجي
                      },
                    ),
                    Container(
                      width: screenWidth(4),
                      height: screenHeight(1),
                      decoration: BoxDecoration(
                        color: Appcolor.Pinkcolor,
                        shape: BoxShape.circle,
                      ),
                      child: FittedBox(
                        child: IconButton(
                          icon: Icon(Icons.send, color: Appcolor.whitecolor),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Obx(() {
              return controller.isEmojiPickerVisible.value
                  ? Positioned(
                      bottom: screenHeight(15), // تحديد المسافة من الأسفل
                      left: 0,
                      right: 0,
                      child: EmojiPicker(
                        config: Config(
                          bottomActionBarConfig: BottomActionBarConfig(
                              showBackspaceButton: false,
                              showSearchViewButton: false),
                          searchViewConfig: SearchViewConfig(),
                        ),
                        onEmojiSelected: (emoji, category) {
                          controller.fieldcontrooler.text =
                              controller.fieldcontrooler.text + category.emoji;
                        },
                      ),
                    )
                  : Container();
            })
          ],
        ),
      ),
    );
  }
}
