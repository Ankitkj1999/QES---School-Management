import 'dart:collection';
import 'dart:developer';

import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/admin_home_controller.dart';

class AdminHomeView extends GetView<AdminHomeController> {
  const AdminHomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: PreferredSize(
        //     child: customAppBar,
        //     preferredSize: Size.fromHeight(getMediaSize(150))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              customAppBar,
              messageBox,
              // homeGridTiles,

              homeGridTiles
            ],
          ),
        ),
      ),
    );
  }

  // App Bar
  Widget get customAppBar => Stack(
        children: [
          Column(
            children: [
              Container(
                width: Get.width,
                height: getMediaSize(150),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.admin_home_cr),
                      fit: BoxFit.fitWidth),
                ),
              ),
              Container(
                // color: const Color.fromARGB(255, 255, 214, 211),
                height: getMediaSize(90),
              )
            ],
          ),
          Positioned(
              top: getMediaSize(100),
              left: getMediaSize(120),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff473f9f),
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                height: getMediaSize(140),
                width: getMediaSize(140),
                padding: EdgeInsets.all(5),
                child: Container(
                  height: getMediaSize(135),
                  width: getMediaSize(135),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.man_profile))),
                ),
              ))
        ],
      );

// Message Box
  Widget get messageBox => Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        height: getMediaSize(91),
        width: getMediaSize(338),
        decoration: BoxDecoration(
            color: Color(0xff473f9f),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Welcome Message',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: getMediaSize(5),
                ),
                Image.asset(
                  AppIcons.forwars_icon,
                  height: getMediaSize(15),
                )
              ],
            ),
            SizedBox(
              height: getMediaSize(10),
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: getMediaSize(308),
                    height: getMediaSize(40),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'The standard Lorem Ipsum passage\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getMediaSize(10),
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text:
                                '"Lorem , consectetur adipiscing eliconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.clip,
                              fontSize: getMediaSize(10),
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );

  // Grid Tiles Of Home
  Widget get homeGridTiles => GridView.builder(
        padding: EdgeInsets.all(10),
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount:
            controller.dashIcons.length, // Total number of items in the grid
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: getMediaSize(140),
          mainAxisExtent: getMediaSize(125),

          // childAspectRatio: 2.0,
          // crossAxisCount: 3, // Number of items in each row
          crossAxisSpacing:
              getMediaSize(18), // Horizontal spacing between items
          mainAxisSpacing: getMediaSize(35), // Vertical spacing between items
        ),
        itemBuilder: (context, index) {
          return ItemTile(
            index: index,
            imagePath: controller.dashIcons[index],
            title: controller.dashTitles[index],
            // call: index == 6 ? () => Get.toNamed('/admin-profile') : null,
          );
        },
      );
}

class ItemTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final int index;
  // final VoidCallback? call;

  ItemTile(
      {required this.imagePath,
      required this.title,
      // this.call,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        index == 6 ? Get.toNamed('/admin-profile') : null;
        // log('Print hello');
        // call;
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: getMediaSize(96),
            width: getMediaSize(96),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: Color(0xffe9f9f5)),
            child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.0),
                ),
                child: Container(
                  height: getMediaSize(5),
                  width: getMediaSize(5),
                  child: Image.asset(imagePath),
                )),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: getMediaSize(15),
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
