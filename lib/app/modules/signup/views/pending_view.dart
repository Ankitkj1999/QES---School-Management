import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PendingView extends GetView {
  const PendingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: view,
    );
  }

  Widget get view => Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppImages.pending_approval,
              width: Get.width * 0.8,
            ),
            Text(
              'Pending Approval',
              style: TextStyle(
                color: Colors.green,
                fontSize: Get.width * getSize(32),
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.49,
              ),
            ),
            notifyMe,
          ],
        ),
      );

  Widget get notifyMe {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          Get.toNamed('/home');
        },
        child: Container(
          width: Get.width * 0.84,
          height: Get.height * getSize(51),
          decoration: ShapeDecoration(
            color: const Color(0xFF21C1F3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            shadows: [
              BoxShadow(
                color: const Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Notify Me',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: Get.height * 0.0266,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900,
                letterSpacing: -0.30,
              ),
            ),
          ),
        ),
      );
    });
  }
}
