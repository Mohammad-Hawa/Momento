import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momento_app/firebase_options.dart';
import 'package:momento_app/ui/views/intro/intro-view.dart';

void main() async {
  // تأكد من تهيئة البند قبل استخدام أي خدمات.
  WidgetsFlutterBinding.ensureInitialized();

  // تأكد من تهيئة Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: IntroView(),
    );
  }
}
