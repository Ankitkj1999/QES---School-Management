import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';

class ProfileView extends GetView {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            topView,
            formView,
          ],
        )),
      ),
    );
  }

  // Signup top view
  Widget get topView => Container(
        width: Get.width,
        height: Get.width * getSize(230),
        decoration: BoxDecoration(
          // color: Color(0XFF473F97),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.purpel_signup_profile),
          ),
        ),
        child: Row(children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(
                  height: Get.width * 0.03,
                ),
                Container(
                  height: Get.width * 0.1,
                  width: Get.height * 0.1,
                  // color: Colors.red,
                  padding: EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      AppIcons.back_icon,
                      width: Get.width * 0.07,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 10,
              child: Column(
                children: [
                  SizedBox(
                    height: Get.width * 0.03,
                  ),
                  Container(
                    width: Get.width * 0.214,
                    height: Get.width * 0.214,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.girl_profile),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        width: 4,
                        color: Color(0xFFFFB5B6),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.width * 0.01,
                  ),
                  Container(
                    // color: Colors.red,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Aastha Tiwari',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Get.width * 0.053,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.30,
                          ),
                        ),
                        Text(
                          'Class VII B',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Get.width * 0.0426,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.30,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 1,
              child: Container(
                width: 0,
              ))
        ]),
      );

  Widget get formView => Container(
        // color: Colors.red,
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(10),
        width: Get.width * 0.84,
        // height: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const formElement(
              title: "School Code",
              fieldValue: "#47514",
            ),
            const formElement(title: 'Student ID', fieldValue: '32345'),
            formElement(title: "Aadhar Number", fieldValue: '2323 3454 5676'),
            formElement(title: 'Date Of Birth', fieldValue: 'Feb 12 2002'),
            formElement(title: 'Roll Number', fieldValue: '12'),
            formElement(title: 'Contact Number', fieldValue: '+91 23453 23345'),
            formElement(title: 'Parent ID', fieldValue: '15786'),
            formElement(
                title: 'Parent Details',
                fieldValue: 'Raghav Jain \n+91 2323 343 23'),
            SizedBox(
              height: Get.width * 0.03,
            ),
            changePassowrdButton,
          ],
        ),
      );

  Widget get changePassowrdButton {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          // controller.submit();
          // Get.snackbar(
          //   "Change Password",
          //   "To change password contact app admin",
          //   snackPosition: SnackPosition.BOTTOM,
          // );
          Get.toNamed('/changePassword');
        },
        child: Column(
          children: [
            Container(
              width: Get.width * 0.7,
              height: Get.height * 0.0554,
              decoration: ShapeDecoration(
                color: const Color(0xFF21C1F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                shadows: const [
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
                  'Change Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Get.width * 0.0533,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.width * 0.0733,
            ),
          ],
        ),
      );
    });
  }
}

class formElement extends StatelessWidget {
  final String title;
  final String fieldValue;
  const formElement({
    super.key,
    required this.title,
    required this.fieldValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF585353),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.30,
              ),
            ),
            SizedBox(
              height: Get.width * 0.01,
            ),
            Container(
              width: Get.width * 0.84,
              // height: Get.width * 0.101,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.25, color: Color(0xFFBDBDBD)),
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0xFFC7C7C7),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    fieldValue,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF473F97),
                      fontSize: Get.width * 0.0426,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.30,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
