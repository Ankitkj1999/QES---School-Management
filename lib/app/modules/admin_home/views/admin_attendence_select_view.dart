import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/admin_attendence_option_controller.dart';
// This file is the Ui screen for assignment

class AdminAttendenceSelectView<AdminAttendenceSelectController>
    extends GetView {
  final AdminAttendenceOptionController controller =
      Get.put(AdminAttendenceOptionController());

  AdminAttendenceSelectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AdminAttendenceSelectController controller = Get.put(
    //     AdminAttendenceSelectController()); // initialization of controller
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
                'Assignment',
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
              Container(
                width: getMediaSize(335),
                height: getMediaSize(55),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Obx(
                  () => DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      value: controller.selectedClass.value,
                      items: controller.classes.map((className) {
                        return DropdownMenuItem(
                          value: className,
                          child: Text(className),
                        );
                      }).toList(),
                      onChanged: (value) {
                        controller.updateSelectedClass(value.toString());
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getMediaSize(20),
              ),
              Container(
                width: getMediaSize(335),
                height: getMediaSize(55),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Obx(
                  () => DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      value: controller.selectedSection.value,
                      items: controller.section.map((sectionName) {
                        return DropdownMenuItem(
                          value: sectionName,
                          child: Text(sectionName),
                        );
                      }).toList(),
                      onChanged: (value) {
                        controller.updateSelectedSection(value.toString());
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getMediaSize(20),
              ),
              Container(
                width: getMediaSize(335),
                height: getMediaSize(55),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Obx(
                  () => DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      value: controller.selectedSubject.value,
                      items: controller.subjects.map((subjectName) {
                        return DropdownMenuItem(
                          value: subjectName,
                          child: Text(subjectName),
                        );
                      }).toList(),
                      onChanged: (value) {
                        controller.updateSelectedSubject(value.toString());
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getMediaSize(80),
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
                      'Submit',
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
