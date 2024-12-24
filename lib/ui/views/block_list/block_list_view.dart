import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momento_app/ui/shared/custom_widget/custom-text.dart';
import 'package:momento_app/ui/shared/shared_widgets/custom_appbar.dart';
import 'package:momento_app/ui/shared/utils.dart';
import 'package:momento_app/ui/views/block_list/custom_row_block.dart';
import 'package:momento_app/ui/views/settings/custom_div_text.dart';

class BlockListView extends StatefulWidget {
  const BlockListView({super.key});

  @override
  State<BlockListView> createState() => _BlockListViewState();
}

class _BlockListViewState extends State<BlockListView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppbar(
        text: 'Block List',
        lefticon: Icons.arrow_back_ios_new_rounded,
        leftonTap: () {
          Get.back();
        },
        rightonTap: () {},
        righticon: Icons.search_rounded,
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.only(
            end: screenWidth(30), start: screenWidth(30), top: screenWidth(25)),
        physics: NeverScrollableScrollPhysics(),
        children: [
          CustomDivText(
            text: 'Showing All 5',
            islin: false,
          ),
          SizedBox(
            height: screenHeight(1),
            child: ListView.builder(
              padding: EdgeInsetsDirectional.only(top: screenWidth(25)),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsetsDirectional.only(bottom: screenWidth(15)),
                  child: CustomRowBlock(
                    image: 'assets/photo/CristianoRonaldo.png',
                    text: 'Cristiano Ronaldo',
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
