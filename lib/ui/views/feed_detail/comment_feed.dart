import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_avatar_name.dart';
import 'package:momento_app/ui/shared/utils.dart';

class CommentFeed extends StatelessWidget {
  final String textcomment;
  final String timeoffeed;
  final String nameofperson;
  final String image;
  CommentFeed(
      {super.key,
      required this.textcomment,
      required this.timeoffeed,
      required this.nameofperson,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(bottom: screenWidth(60)),
          child: CustomAatarAndName(
              iscolumn: false,
              timeoffeed: timeoffeed,
              nameofperson: nameofperson,
              image: image),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(start: screenWidth(20)),
          child: CustomText(styletype: StyleOfText.SMALL, text: textcomment),
        )
      ],
    );
  }
}
