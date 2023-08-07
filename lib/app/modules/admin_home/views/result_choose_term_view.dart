import 'dart:convert';

import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ResultChooseTermView<ResultChooseTermController> extends GetView {
  const ResultChooseTermView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage(AppImages.full_blue_bg),
              ),
            ),
            child: Column(
              children: [
                topView,
                Container(
                  width: Get.width,
                  height: getMediaSize(50),
                  decoration: BoxDecoration(
                    color: Color(0xff473f97),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AppIcons.white_curve,
                      ),
                    ),
                  ),
                ),
                bodyView
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get topView => Container(
        padding: const EdgeInsets.all(10),
        width: Get.width,
        height: getMediaSize(50),
        decoration: BoxDecoration(
          color: Color(0XFF473F97),
          // image: DecorationImage(
          //   fit: BoxFit.fill,
          //   image: AssetImage(AppImages.purpel_signup),
          // ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.red,
                // padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    AppIcons.back_icon,
                    width: Get.width * 0.04,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.05,
            ),
            Expanded(
              flex: 12,
              child: Text(
                'Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                  letterSpacing: -0.30,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      );

  Widget get bodyView => Expanded(
        child: Container(
          color: Colors.white,
          width: Get.width,
          // height: Get.height,
          // padding: EdgeInsets.all(getMediaSize(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // first term
              GestureDetector(
                onTap: () => Get.toNamed('/admin-result-class'),
                child: Container(
                  width: getMediaSize(311),
                  height: getMediaSize(166),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 4), // Controls the shadow offset
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    // border: Border(
                    //   top: BorderSide(color: Colors.red, width: 4),
                    // ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SizedBox(
                              width: getMediaSize(280),
                              height: getMediaSize(19),
                              child: Text(
                                'First Terminal',
                                style: TextStyle(
                                  color: Color(0xFF473F97),
                                  fontSize: 15,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              width: 278,
                              height: 54.97,
                              decoration: ShapeDecoration(
                                color: Color(0xFFE9E9E9),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getMediaSize(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'PUBLISH',
                                  style: TextStyle(
                                    color: Color(0xFF473F97),
                                    fontSize: 15,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        left: 0,
                        top: 0.65,
                        child: Container(
                          width: getMediaSize(311),
                          height: getMediaSize(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfffd366f),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: getMediaSize(40),
              ),
              // second term
              Container(
                width: getMediaSize(311),
                height: getMediaSize(166),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 4), // Controls the shadow offset
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  // border: Border(
                  //   top: BorderSide(color: Colors.red, width: 4),
                  // ),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                            width: getMediaSize(280),
                            height: getMediaSize(19),
                            child: Text(
                              'Second Terminal',
                              style: TextStyle(
                                color: Color(0xFF473F97),
                                fontSize: 15,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: 278,
                            height: 54.97,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE9E9E9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getMediaSize(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'PUBLISH',
                                style: TextStyle(
                                  color: Color(0xFF473F97),
                                  fontSize: 15,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      left: 0,
                      top: 0.65,
                      child: Container(
                        width: getMediaSize(311),
                        height: getMediaSize(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfffd366f),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
