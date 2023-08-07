import 'dart:math';

import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/admin_attendence_mark_controller.dart';

class AdminAttendenceMarkView extends GetView {
  final AdminAttendenceMarkController controller =
      Get.put(AdminAttendenceMarkController());

  AdminAttendenceMarkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // initialization of controller
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // height: Get.height,
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
                  height: getMediaSize(30),
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
                SingleChildScrollView(child: bodyView)
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
          // padding: EdgeInsets.all(getMediaSize(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: getMediaSize(50),
              // ),

              // Class name and date
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getMediaSize(10), vertical: getMediaSize(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: getMediaSize(124),
                      height: getMediaSize(17),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Class : ',
                              style: TextStyle(
                                color: Color(0xFF473F97),
                                fontSize: getMediaSize(15),
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '3 A',
                              style: TextStyle(
                                color: Color(0xFF473F97),
                                fontSize: getMediaSize(15),
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getMediaSize(112),
                      height: getMediaSize(17),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Date: ',
                              style: TextStyle(
                                color: Color(0xFF473F97),
                                fontSize: getMediaSize(15),
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: ' 12/12/21',
                              style: TextStyle(
                                color: Color(0xFF473F97),
                                fontSize: getMediaSize(15),
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Student name and present absent in container
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getMediaSize(20), vertical: getMediaSize(1)),
                height: getMediaSize(20),
                color: Color(0xff7e79B6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(
                        'Student Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getMediaSize(10),
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Text(
                            'Present',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getMediaSize(10),
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: getMediaSize(20),
                          ),
                          Text(
                            'Absent',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getMediaSize(10),
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // student list view to make present absent
              chatElements,
            ],
          ),
        ),
      );

  Widget get chatElements {
    // List to track the presence or absence of students
    var isPresentList =
        List<bool>.filled(controller.studentName.length, true).obs;

    void updatePresence(int index, bool isPresent) {
      isPresentList[index] = !isPresent;
      print(isPresentList.toString());
    }

    return Container(
      padding: EdgeInsets.all(10),

      // color: Colors.red,
      // height: Get.height * 0.8,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller.studentName.length,
        itemBuilder: (BuildContext context, int index) {
          bool isPresent = isPresentList[index];

          return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0x19C4C4C4),
                  width: 2,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    controller.studentName[index],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getMediaSize(10),
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  flex: 7,
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Checkbox(
                        value: isPresent,
                        onChanged: (value) {
                          updatePresence(index, value!);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        activeColor: Colors.green, // Change checkbox color
                      ),
                      Checkbox(
                        value: !isPresent,
                        onChanged: (value) {
                          updatePresence(index, !value!);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        activeColor: Colors.red, // Change checkbox color
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
