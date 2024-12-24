import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';

class CustomFloatButton extends StatelessWidget {
  final Function ontap;
  const CustomFloatButton({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      onPressed: () {
        ontap();
      },
      backgroundColor: Appcolor.Pinkcolor,
      child: Icon(
        Icons.camera_alt_outlined,
        color: Appcolor.whitecolor,
      ),
    );
  }
}
