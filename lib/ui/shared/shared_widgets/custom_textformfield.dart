import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/utils.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? showpassword;
  final bool? isvisable;
  final Function? onTap;
  final IconData? icon;
  CustomTextFormField(
      {super.key,
      required this.text,
      this.controller,
      this.validator,
      this.showpassword = false,
      this.isvisable = false,
      this.onTap,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(1.2),
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          suffixIconColor:
              isvisable! ? Appcolor.Pinkcolor : Appcolor.Blackcolor,
          suffixIcon: showpassword!
              ? InkWell(
                  onTap: () {
                    onTap!();
                  },
                  child: Icon(icon))
              : SizedBox(),
          hintText: text,
          hintStyle: TextStyle(
            fontFamily: 'Lora',
            fontSize: screenWidth(25),
            fontWeight: FontWeight.normal,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  BorderSide(color: Appcolor.Blackcolor.withOpacity(0.2))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  BorderSide(color: Appcolor.Blackcolor.withOpacity(0.2))),
        ),
      ),
    );
  }
}
