// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:momento_app/ui/shared/shared_widgets/custom_drawer/custom_drawer.dart';
// import 'package:momento_app/ui/shared/utils.dart';
// import 'package:momento_app/ui/views/settings/settings_view.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool _isContainerVisible = false; // متغير لتتبع ظهور الـ Container
//   GlobalKey<ScaffoldState> scafolldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scafolldKey,
//       drawer: CustomDrawe(
       
//       ),
//       appBar: AppBar(
//         title: Text('Custom Icon Popup Menu Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // زر الأيقونة للتحكم في إظهار أو إخفاء الـ Container
//             IconButton(
//               icon: Icon(Icons.menu), // أيقونة القائمة
//               onPressed: () {
//                 scafolldKey.currentState?.openDrawer();
//                 // setState(() {
//                 //   _isContainerVisible =
//                 //       !_isContainerVisible; // تبديل حالة الظهور
//                 // });
//               },
//             ),
//             SizedBox(height: screenHeight(15)),
//             // استخدام Visibility للتحكم في ظهور الـ Container
//             Visibility(
//               visible:
//                   _isContainerVisible, // تحديد ما إذا كان الـ Container مرئيًا أم لا
//               child: Container(
//                 width: screenWidth(2),
//                 height: screenHeight(5),
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(8),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 10,
//                       spreadRadius: 2,
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     // العنصر الأول
//                     Row(
//                       children: [
//                         Icon(Icons.add, color: Colors.blue),
//                         SizedBox(width: 10),
//                         Text('إضافة عنصر جديد'),
//                       ],
//                     ),
//                     Divider(),
//                     // العنصر الثاني
//                     Row(
//                       children: [
//                         Icon(Icons.settings, color: Colors.green),
//                         SizedBox(width: 10),
//                         Text('الإعدادات'),
//                       ],
//                     ),
//                     Divider(),
//                     // العنصر الثالث
//                     Row(
//                       children: [
//                         Icon(Icons.logout, color: Colors.red),
//                         SizedBox(width: 10),
//                         Text('تسجيل الخروج'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
