import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedDetailController extends GetxController {
  // متغير يتحكم في ظهور لوحة الإيموجي
  RxBool isEmojiPickerVisible = false.obs;
  RxBool isfav = false.obs; // حالة المفضلة
  TextEditingController fieldcontrooler =
      TextEditingController(); // لحفظ النص المدخل
  RxInt numlike = 1.obs;
  // دالة لتبديل حالة ظهور الإيموجي
  void toggleEmojiPicker() {
    isEmojiPickerVisible.value = !isEmojiPickerVisible.value;
  }

  FocusNode focus = FocusNode();
  @override
  void onInit() {
    focus.addListener(() {
      if (focus.hasFocus) {
        isEmojiPickerVisible.value = false;
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    fieldcontrooler.dispose();
    super.onClose();
  }
}
