import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedController extends GetxController {
  // قائمة مراقبة تحتوي على حالات الفافوريت لكل عنصر
  List<RxBool> isFavoriteList = List<RxBool>.generate(5, (_) => false.obs);

  // مفتاح للتحكم في الـ Scaffold
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}
