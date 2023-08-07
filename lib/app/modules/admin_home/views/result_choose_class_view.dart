import 'package:ces/app/modules/admin_home/controllers/result_choose_class_controller.dart';
import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ResultChooseClassView extends GetView {
  final ResultChooseClassController controller =
      Get.put(ResultChooseClassController());
  ResultChooseClassView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            decoration: const BoxDecoration(
                // color: Colors.white,
                // image: DecorationImage(
                //   repeat: ImageRepeat.repeat,
                //   image: AssetImage(AppImages.full_blue_bg),
                // ),
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

  Widget get bodyView => Container(
        width: getMediaSize(311),
        height: getMediaSize(366),
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
                // Padding(
                //   padding: const EdgeInsets.only(left: 20),
                //   child: SizedBox(
                //     width: getMediaSize(240),
                //     height: getMediaSize(19),
                //     child: Text(
                //       'First Terminal',
                //       style: TextStyle(
                //         color: Color(0xFF473F97),
                //         fontSize: 15,
                //         fontFamily: 'Open Sans',
                //         fontWeight: FontWeight.w400,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 15,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: Container(
                //     width: 278,
                //     height: 54.97,
                //     decoration: ShapeDecoration(
                //       color: Color(0xFFE9E9E9),
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(8)),
                //     ),
                //   ),
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            'Class',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getMediaSize(240),
                      height: getMediaSize(25),
                      // padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: ShapeDecoration(
                        color: Color(0xffe1e1e1),
                        shape: RoundedRectangleBorder(
                            // borderRadius: BorderRadius.circular(32),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            'Section',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getMediaSize(240),
                      height: getMediaSize(25),
                      // padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: ShapeDecoration(
                        color: Color(0xffe1e1e1),
                        shape: RoundedRectangleBorder(
                            // borderRadius: BorderRadius.circular(32),
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
                              controller
                                  .updateSelectedSection(value.toString());
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getMediaSize(20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            'Subject',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getMediaSize(240),
                      height: getMediaSize(25),
                      // padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: ShapeDecoration(
                        color: Color(0xffe1e1e1),
                        shape: RoundedRectangleBorder(
                            // borderRadius: BorderRadius.circular(32),
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
                              controller
                                  .updateSelectedSubject(value.toString());
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getMediaSize(80),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
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
      );
}
