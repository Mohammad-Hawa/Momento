import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController{
    TextEditingController namecontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  TextEditingController locationcontroller = TextEditingController();
  TextEditingController aboutmecontroller = TextEditingController();
  Future<void> selectdate(BuildContext context) async {
    DateTime? time = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (time != null) {
      datecontroller.text = '${time.day}/${time.month}/${time.year}';
    }
  }
}