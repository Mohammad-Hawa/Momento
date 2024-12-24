import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_avatar_name.dart';
import 'package:momento_app/ui/shared/utils.dart';

class CustomFeed extends StatelessWidget {
  final String image;
  final String nameofperson;
  final String timeoffeed;
  final bool? isfav;
  final String photo;
  final Function ontap;
  const CustomFeed(
      {super.key,
      required this.image,
      required this.nameofperson,
      required this.timeoffeed,
      this.isfav = false,
      required this.ontap,
      required this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: screenWidth(55)),
      height: screenHeight(3.45),
      width: screenWidth(1.2),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Appcolor.grycolor,
                  borderRadius: BorderRadius.circular(4)),
              height: screenHeight(5),
              width: screenWidth(1.2),
              alignment: AlignmentDirectional.center,
              child: photo == null
                  ? Icon(
                      Icons.photo_size_select_actual_outlined,
                      color: Appcolor.Pinkcolor,
                      size: screenWidth(6),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        width: screenHeight(1),
                        fit: BoxFit.cover,
                        photo,
                      ),
                    )),
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(45),
                start: screenWidth(25),
                end: screenWidth(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAatarAndName(
                  image: image,
                  nameofperson: nameofperson,
                  timeoffeed: timeoffeed,
                ),
                InkWell(
                  onTap: () {
                    ontap();
                  },
                  child: Icon(
                    Icons.favorite,
                    color: isfav! ? Appcolor.Pinkcolor : Appcolor.grycolor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
