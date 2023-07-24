import 'package:ces/app/modules/home/controllers/timetale_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';
import '../../../../utils/styles.dart';

class TimetableView extends GetView<TimetaleController> {
  const TimetableView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 6, // Number of tabs
          child: Container(
            // height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage(AppImages.beans_bg),
              ),
            ),
            child: Column(
              children: [topView, tabBar, tabView],
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
                'Timetable',
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

  Widget get tabBar => Container(
        padding: EdgeInsets.all(15),
        child: Container(
          height: Get.width * 0.072,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1),
            ],
          ),
          child: TabBar(
            labelPadding: EdgeInsets.only(right: 2),
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: Get.width * 0.0266,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.30,
            ),
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Color(0XFF473F97)),
            tabs: const [
              Tab(
                text: 'MON',
              ),
              Tab(
                text: 'TUE',
              ),
              Tab(
                text: 'WED',
              ),
              Tab(
                text: 'THU',
              ),
              Tab(
                text: 'FRI',
              ),
              Tab(
                text: 'SAT',
              ),
            ],
          ),
        ),
      );

  Widget get tabView => Expanded(
        child: TabBarView(
          children: [
            // Content for Tab 1
            SingleChildScrollView(child: timeTableElement),
            // Content for Tab 2
            SingleChildScrollView(child: timeTableElement),
            // Content for Tab 3
            SingleChildScrollView(child: timeTableElement),
            // Content for Tab 4
            SingleChildScrollView(child: timeTableElement),
            // Content for Tab 5
            SingleChildScrollView(child: timeTableElement),
            // Content for Tab 6
            SingleChildScrollView(child: timeTableElement),
          ],
        ),
      );

  Widget get timeTableElement => Container(
        // color: Colors.red,
        // height: Get.height * 0.8,

        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.routineSubjectList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // width: Get.width * 0.7,
                    // padding: EdgeInsets.only(left: 3),
                    margin: EdgeInsets.fromLTRB(5, 3, 5, 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      // color: Colors.green,
                      // color: index % 2 == 0
                      //     ? Color(0xff473f97)
                      //     : Color(0xffd197ae),
                    ),
                    child: Container(
                      // width: Get.width * 0.7,
                      height: Get.width * 0.267,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // color: index % 2 == 0
                        //     ? Color(0xffFFECED)
                        //     : Color(0xffD1CFE5),
                        borderRadius: BorderRadius.circular(11),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1.0,
                            blurRadius: 1,
                            offset: Offset(1, -1),
                          ),
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 2,
                            offset: Offset(0, 3),
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              // color: Colors.red,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.teacherNameList[index],
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xFF777777),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    controller.periodList[index],
                                    style: TextStyle(
                                      color: Color(0xFF3A3A3A),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              children: [
                                Container(
                                  width: 1,
                                  color: Colors.red,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(25, 15, 15, 15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(11),
                                          bottomRight: Radius.circular(11))),
                                  child: Container(
                                    // height: Get.width * 0.24,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            // height: Get.width * 0.24,
                                            width: Get.width * getSize(180),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        controller
                                                                .routineSubjectList[
                                                            index],
                                                        overflow: TextOverflow
                                                            .fade, // Truncate and add ellipsis
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize:
                                                              Get.width * 0.048,
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          letterSpacing: -0.30,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: Get.width * 0.0613,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        controller
                                                            .timeList[index],
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF777777),
                                                          fontSize:
                                                              Get.width * 0.037,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          // IconButton(
                                          //   onPressed: () {
                                          //     Get.toNamed('/files');
                                          //   },
                                          //   icon: Icon(
                                          //     Icons.arrow_forward_ios_rounded,
                                          //     size: 15,
                                          //     weight: 800,
                                          //   ),
                                          // ),
                                        ],
                                      ),
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
                },
              ),
            ),
            bottomBG
          ],
        ),
      );

  Widget get bottomBG => Container(
        height: Get.width * 0.45,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.blue_bg),
          ),
        ),
      );
}
