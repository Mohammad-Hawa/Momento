import 'package:bot_toast/bot_toast.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momento_app/core/data/repository/auth_repository.dart';

class SignUpController extends GetxController {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confiermpasswordcontroller = TextEditingController();
  RxBool isvisable = false.obs;

  //! signup
  // Signup() {
  //   AutheRepository()
  //       .Signup(email: emailcontroller.text, password: passwordcontroller.text)
  //       .then((value) {
  //     value.fold((l) {
  //       // BotToast.showText(text: l);
  //       print('++++++++++++++++++++++++++++++');
  //       print(l);
  //       print('+++++++++++++++++++++++++++++++');
  //     }, (r) {
  //       print('donnnnnn');
  //       // BotToast.showText(text: "doone");
  //     });
  //   });
  // }
}
