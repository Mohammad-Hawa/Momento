import 'package:flutter/material.dart';
import 'package:momento_app/ui/shared/colors.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_drawer/custom_drawer.dart';
import 'package:momento_app/ui/shared/utils.dart';

class ChatRecentView extends StatefulWidget {
  const ChatRecentView({super.key});

  @override
  State<ChatRecentView> createState() => _ChatRecentViewState();
}

class _ChatRecentViewState extends State<ChatRecentView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppbar(
              text: 'Recent Chats',
              lefticon: Icons.menu,
              leftonTap: () {
                // controller.scaffoldKey.currentState?.openDrawer();
              },
              righticon: Icons.people_alt_outlined,
            ),
            drawer: CustomDrawe(
              textname: 'Cristiano Ronaldo',
            ),
            body: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    PopupMenuButton(
                      child: Icon(Icons.menu),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            child: Icon(Icons.abc),
                          ),
                        ];
                      },
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(
                          end: screenWidth(60), start: screenWidth(25)),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Appcolor.Blackcolor,
                            width: screenWidth(250)),
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/photo/png/CR7.png',
                          width: screenWidth(5),
                          height: screenHeight(10),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(text: 'Terry Allen'),
                            Container(
                              color: Appcolor.Pinkcolor,
                              margin: EdgeInsetsDirectional.only(
                                  start: screenWidth(5)),
                              child: CustomText(text: '3h'),
                            )
                          ],
                        ),
                        CustomText(
                            text:
                                'Bushwick meh Blue Bottle pork belly mustache skateboa.'),
                      ],
                    )
                  ],
                );
              },
            )));
  }
}
