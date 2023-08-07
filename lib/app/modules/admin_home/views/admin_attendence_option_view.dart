import 'package:ces/utils/app_images.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/styles.dart';

class AdminAttendenceOptionView<AdminAttendenceOptionController>
    extends GetView {
  const AdminAttendenceOptionView({Key? key}) : super(key: key);
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
        padding: EdgeInsets.all(10),
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
                'Attendance',
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
          padding: EdgeInsets.all(getMediaSize(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed('/admin-attendence-select');
                },
                child: Container(
                  width: getMediaSize(335),
                  height: getMediaSize(51),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFFD3667)),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Add Attendance',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFD3667),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getMediaSize(20),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/admin-attendence-mark');
                },
                child: Container(
                  width: getMediaSize(335),
                  height: getMediaSize(51),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFFD3667)),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'View Student Attencence',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFD3667),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getMediaSize(20),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: getMediaSize(335),
                  height: getMediaSize(51),
                  decoration: ShapeDecoration(
                    color: Color(0xFFFD3667),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFFD3667)),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'View Self Attencence',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
