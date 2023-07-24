import 'package:ces/app/modules/home/controllers/live_class_controller.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';

class LiveClassView extends GetView<LiveClassController> {
  const LiveClassView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage(AppImages.beans_bg),
              ),
            ),
            child: Column(
              children: [
                topView,
                classElements,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get topView => Container(
        padding: EdgeInsets.all(10),
        width: Get.width,
        height: Get.width * 0.3,
        decoration: BoxDecoration(

            // color: Color(0XFF473F97),
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppImages.purpel_signup),
        )),
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
                'Live Classes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Get.width * 0.048,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
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

  Widget get classElements => Container(
        padding: EdgeInsets.all(Get.width * getSize(10)),
        // color: Colors.red,
        // height: Get.height * 0.8,

        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.classNameList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(bottom: Get.width * getSize(15)),
              width: Get.width * 0.8,
              height: Get.width * 0.49,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey, width: 0),
                boxShadow: const [
                  BoxShadow(
                      // color: Color(0xffc0c0c0),
                      ),
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1.0,
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 13,
                    child: Container(
                      // width: Get.width * 0.2,
                      // height: Get.width * 0.2,

                      decoration: BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage('assets/images/live_class.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                      // child: Image.asset('assets/images/live_class.png'),
                    ),
                  ),
                  Expanded(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * getSize(15),
                            vertical: Get.width * getSize(7)),
                        decoration: BoxDecoration(
                          // color: Colors.green,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              // width: Get.width * 0.5,
                              // height: Get.width * 0.03,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    controller.classNameList[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: Get.width * getSize(14),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.26,
                                    ),
                                  ),
                                  Container(
                                    width: Get.width * getSize(85),
                                    height: Get.width * getSize(25),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF21C1F3),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.38),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Join Now',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Get.width * 0.03,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: Get.width * getSize(6)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  // width: Get.width * 0.5,
                                  // height: Get.width * 0.029,
                                  child: Text(
                                    controller.teacherNameList[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: Get.width * 0.032,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.26,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // width: 91,
                                  // height: 11,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Status: ',
                                          style: TextStyle(
                                            color: Color(0xFF3A3A3A),
                                            fontSize: Get.width * 0.03,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.26,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Ongoing',
                                          style: TextStyle(
                                            color: Color(0xFF473F97),
                                            fontSize: Get.width * 0.03,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.26,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: Get.width * getSize(4),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  // width: 127,
                                  height: Get.width * getSize(12),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Start Date: ',
                                          style: TextStyle(
                                            color: Color(0xFF6C6C6C),
                                            fontSize: Get.width * getSize(12),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.26,
                                          ),
                                        ),
                                        TextSpan(
                                          text: controller.startDateList[index],
                                          style: TextStyle(
                                            color: Color(0xFF3A3A3A),
                                            fontSize: Get.width * getSize(12),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.26,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // width: 129,
                                  height: Get.width * getSize(12),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Start Time: ',
                                          style: TextStyle(
                                            color: Color(0xFF6C6C6C),
                                            fontSize: Get.width * getSize(12),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.26,
                                          ),
                                        ),
                                        TextSpan(
                                          text: controller.startTimeList[index],
                                          style: TextStyle(
                                            color: Color(0xFF3A3A3A),
                                            fontSize: Get.width * getSize(12),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.26,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            );
          },
        ),
      );
}
