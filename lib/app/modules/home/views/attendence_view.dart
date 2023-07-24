import 'package:ces/app/modules/home/controllers/attendence_controller.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel, WeekdayFormat;
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';

class AttendenceView extends GetView<AttendenceController> {
  const AttendenceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 2, // Number of tabs
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
                tabView,
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
        height: Get.width * 0.43,
        decoration: BoxDecoration(

            // color: Color(0XFF473F97),
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppImages.purpel_signup),
        )),
        child: Column(
          children: [
            Row(
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
                    '',
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
                  child: Container(
                    // color: Colors.red,
                    padding: EdgeInsets.only(right: 5),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        AppIcons.share_icon,
                        width: Get.width * getSize(20),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.width * getSize(10),
            ),
            tabBar,
            SizedBox(
              height: Get.width * getSize(10),
            ),
          ],
        ),
      );

  Widget get tabBar => Container(
        // padding: EdgeInsets.all(35),
        width: getMediaSize(217),
        height: getMediaSize(32),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0XFFDFDCFF),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1),
            ],
          ),
          child: TabBar(
            labelColor: Color(0xFF6688CA),
            // overlayColor: MaterialStateProperty.all(Colors.brown),
            labelStyle: TextStyle(
              color: Color(0xFF6688CA),
              fontSize: Get.width * getSize(12),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.30,
            ),
            unselectedLabelColor: Color(0xFF6688CA),
            // unselectedLabelStyle: TextStyle(color: Color(0xFF6688CA)),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.white),
            tabs: [
              Tab(
                text: 'ATTENDENCE',
              ),
              Tab(text: 'HOLIDAY'),
            ],
          ),
        ),
      );

  Widget get tabView => Expanded(
        child: TabBarView(
          children: [
            // Content for Tab 1
            SingleChildScrollView(
              child: Column(
                children: [
                  ShowAttendenceCalander,
                  // SizedBox(
                  //   height: getMediaSize(20),
                  // ),
                  // tileElement,
                  SizedBox(
                    height: getMediaSize(20),
                  ),
                  bottomBG
                ],
              ),
            ),
            // Content for Tab 2
            SingleChildScrollView(
              child: Column(
                children: [
                  ShowHolidayCalander,
                  SizedBox(
                    height: getMediaSize(20),
                  ),
                  tileElement,
                  SizedBox(
                    height: getMediaSize(20),
                  ),
                  bottomBG
                ],
              ),
            ),
          ],
        ),
      );

  Widget get bottomBG => Container(
        height: Get.width * 0.48,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.blue_bg),
          ),
        ),
      );

  Widget get ShowAttendenceCalander => Container(
        height: getMediaSize(362),
        padding: EdgeInsets.symmetric(horizontal: getMediaSize(20)),
        // color: Colors.red,
        margin: EdgeInsets.symmetric(
            horizontal: getMediaSize(4), vertical: getMediaSize(10)),
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
        child: CalendarCarousel<Event>(
          // onDayPressed: (DateTime date, List<Event> events) {
          //   this.setState(() => _currentDate = date);
          // },
          // todayBorderColor: Colors.green,
          showOnlyCurrentMonthDate: true,
          height: getMediaSize(250),

          // todayTextStyle: TextStyle(
          //   color: Colors.white,
          //   fontSize: getMediaSize(16),
          //   fontFamily: 'Poppins',
          //   fontWeight: FontWeight.w600,
          // ),
          // todayBorderColor: Colors.transparent,
          // // todayButtonColor: Colors.transparent,
          // // markedDateIconBorderColor: Colors.white,
          // todayButtonColor: Colors.blue,
          // markedDateMoreShowTotal: null,
          // markedDateIconMaxShown: 1,
          // customWeekDayBuilder: (int no, String txt) {
          //   return Container(
          //     child: Text(txt),
          //     decoration:
          //         BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          //   );
          // },
          onCalendarChanged: (DateTime date) {
            print("Month is");
            controller.count.value += 1;
            print(controller.count.value);
            // print(date);
            controller.viewMonth.value =
                date; // Use .value to assign the value to Rx<DateTime>
            print(controller.viewMonth.value);
          },
          leftButtonIcon: Text(
            '<',
            style: TextStyle(
              color: Colors.black,
              fontSize: getMediaSize(20),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          rightButtonIcon: Text(
            '>',
            style: TextStyle(
              color: Colors.black,
              fontSize: getMediaSize(20),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          weekDayFormat: WeekdayFormat.short,
          daysTextStyle: TextStyle(
            color: Colors.black,
            fontSize: getMediaSize(16.72),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          // weekendTextStyle: TextStyle(
          weekendTextStyle: TextStyle(
            color: Colors.black,
            fontSize: getMediaSize(16.72),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          headerTextStyle: TextStyle(
            color: Colors.black,
            fontSize: getMediaSize(16.72),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
          weekdayTextStyle: TextStyle(
            color: Colors.black,
            fontSize: getMediaSize(16.72),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
          // thisMonthDayBorderColor: Colors.grey,
//      weekDays: null, /// for pass null when you do not want to render weekDays
//           headerText: 'Custom Header',
          customDayBuilder: (
            /// you can provide your own build function to make custom day containers
            bool isSelectable,
            int index,
            bool isSelectedDay,
            bool isToday,
            bool isPrevMonthDay,
            TextStyle textStyle,
            bool isNextMonthDay,
            bool isThisMonthDay,
            DateTime day,
          ) {
            /// If you return null, [CalendarCarousel] will build container for current [day] with default function.
            /// This way you can build custom containers for specific days only, leaving rest as default.

            // Example: every 15th of month, we have a flight, we can place an icon in the container like that:
            // if (day.day == DateTime.now()) {
            //   log('today is $day');
            //   return Container(
            //     color: Colors.black,
            //     child: Center(
            //         child: Text(
            //       day.day.toString(),
            //       style: TextStyle(
            //         color: Colors.red,
            //         fontSize: getMediaSize(16.72),
            //         fontFamily: 'Poppins',
            //         fontWeight: FontWeight.w400,
            //       ),
            //     )),
            //     decoration: BoxDecoration(
            //         color: Color(0xff473f97),
            //         borderRadius: BorderRadius.circular(10)),
            //   );
            // }

            // todays date
            // if (day.day == controller.today.day &&
            //     day.month == controller.today.month &&
            //     day.year == controller.today.year) {
            //   return Container(
            //     child: Center(
            //       child: Text(
            //         day.day.toString(),
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: getMediaSize(16.72),
            //           fontFamily: 'Poppins',
            //           fontWeight: FontWeight.w400,
            //         ),
            //       ),
            //     ),
            //     decoration: BoxDecoration(
            //       color: Colors.black,
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   );
            // }
            // if (controller.presentDates.any((date) => day.day == date.day)) {
            //   log('day is $day');

            if (controller.presentDates
                .any((date) => controller.isSameDate(date, day))) {
              return Container(
                child: Center(
                  child: Text(
                    day.day.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getMediaSize(16.72),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            } else if (controller.absentDates
                .any((date) => controller.isSameDate(date, day))) {
              return Container(
                child: Center(
                  child: Text(
                    day.day.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getMediaSize(16.72),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }

            return null;

            return null;
          },
          weekFormat: false,
          // markedDatesMap: _markedDateMap,
          // selectedDateTime: _currentDate,
          todayButtonColor: Colors.transparent,
          todayBorderColor: Colors.transparent,
          daysHaveCircularBorder: true,

          /// null for not rendering any border, true for circular border, false for rectangular border
        ),
      );
  Widget get ShowHolidayCalander => Container(
        height: getMediaSize(362),
        padding: EdgeInsets.symmetric(horizontal: getMediaSize(20)),
        // color: Colors.red,
        margin: EdgeInsets.symmetric(
            horizontal: getMediaSize(4), vertical: getMediaSize(10)),
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
        child: CalendarCarousel<Event>(
          // onDayPressed: (DateTime date, List<Event> events) {
          //   this.setState(() => _currentDate = date);
          // },
          // todayBorderColor: Colors.green,
          showOnlyCurrentMonthDate: true,
          height: getMediaSize(250),

          // todayTextStyle: TextStyle(
          //   color: Colors.white,
          //   fontSize: getMediaSize(16),
          //   fontFamily: 'Poppins',
          //   fontWeight: FontWeight.w600,
          // ),
          // todayBorderColor: Colors.transparent,
          // // todayButtonColor: Colors.transparent,
          // // markedDateIconBorderColor: Colors.white,
          // todayButtonColor: Colors.blue,
          // markedDateMoreShowTotal: null,
          // markedDateIconMaxShown: 1,
          // customWeekDayBuilder: (int no, String txt) {
          //   return Container(
          //     child: Text(txt),
          //     decoration:
          //         BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          //   );
          // },
          onCalendarChanged: (DateTime date) {
            print("Month is");
            controller.count.value += 1;
            print(controller.count.value);
            // print(date);
            controller.viewMonth.value =
                date; // Use .value to assign the value to Rx<DateTime>
            print(controller.viewMonth.value);
          },
          leftButtonIcon: Text(
            '<',
            style: TextStyle(
              color: Colors.black,
              fontSize: getMediaSize(20),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          rightButtonIcon: Text(
            '>',
            style: TextStyle(
              color: Colors.black,
              fontSize: getMediaSize(20),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          weekDayFormat: WeekdayFormat.short,
          daysTextStyle: TextStyle(
            color: Colors.black,
            fontSize: getMediaSize(16.72),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          // weekendTextStyle: TextStyle(
          weekendTextStyle: TextStyle(
            color: Colors.black,
            fontSize: getMediaSize(16.72),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          headerTextStyle: TextStyle(
            color: Colors.black,
            fontSize: getMediaSize(16.72),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
          weekdayTextStyle: TextStyle(
            color: Colors.black,
            fontSize: getMediaSize(16.72),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
          // thisMonthDayBorderColor: Colors.grey,
//      weekDays: null, /// for pass null when you do not want to render weekDays
//           headerText: 'Custom Header',
          customDayBuilder: (
            /// you can provide your own build function to make custom day containers
            bool isSelectable,
            int index,
            bool isSelectedDay,
            bool isToday,
            bool isPrevMonthDay,
            TextStyle textStyle,
            bool isNextMonthDay,
            bool isThisMonthDay,
            DateTime day,
          ) {
            /// If you return null, [CalendarCarousel] will build container for current [day] with default function.
            /// This way you can build custom containers for specific days only, leaving rest as default.

            // Example: every 15th of month, we have a flight, we can place an icon in the container like that:
            // if (day.day == DateTime.now()) {
            //   log('today is $day');
            //   return Container(
            //     color: Colors.black,
            //     child: Center(
            //         child: Text(
            //       day.day.toString(),
            //       style: TextStyle(
            //         color: Colors.red,
            //         fontSize: getMediaSize(16.72),
            //         fontFamily: 'Poppins',
            //         fontWeight: FontWeight.w400,
            //       ),
            //     )),
            //     decoration: BoxDecoration(
            //         color: Color(0xff473f97),
            //         borderRadius: BorderRadius.circular(10)),
            //   );
            // }

            // todays date
            // if (day.day == controller.today.day &&
            //     day.month == controller.today.month &&
            //     day.year == controller.today.year) {
            //   return Container(
            //     child: Center(
            //       child: Text(
            //         day.day.toString(),
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: getMediaSize(16.72),
            //           fontFamily: 'Poppins',
            //           fontWeight: FontWeight.w400,
            //         ),
            //       ),
            //     ),
            //     decoration: BoxDecoration(
            //       color: Colors.black,
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   );
            // }
            // if (controller.presentDates.any((date) => day.day == date.day)) {
            //   log('day is $day');

            if (controller.presentDates
                .any((date) => controller.isSameDate(date, day))) {
              return Container(
                child: Center(
                  child: Text(
                    day.day.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getMediaSize(16.72),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            } else if (controller.absentDates
                .any((date) => controller.isSameDate(date, day))) {
              return Container(
                child: Center(
                  child: Text(
                    day.day.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getMediaSize(16.72),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }

            return null;

            return null;
          },
          weekFormat: false,
          // markedDatesMap: _markedDateMap,
          // selectedDateTime: _currentDate,
          todayButtonColor: Colors.transparent,
          todayBorderColor: Colors.transparent,
          daysHaveCircularBorder: true,

          /// null for not rendering any border, true for circular border, false for rectangular border
        ),
      );

  Widget get tileElement => Obx(() => controller.count.value == 0
      ? Container(
          // color: Colors.red,
          // height: Get.height * 0.8,

          child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.holdayList.length,
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
                            flex: 6,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(25, 15, 15, 15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(11),
                                          bottomLeft: Radius.circular(11),
                                          topRight: Radius.circular(11),
                                          bottomRight: Radius.circular(11))),
                                  child: Container(
                                    // color: Colors.red,
                                    // height: Get.width * 0.24,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            // height: Get.width * 0.24,
                                            width: Get.width * getSize(300),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        controller
                                                            .holdayList[index],
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      controller
                                                          .dateList[index],
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                                    // SizedBox(
                                                    //   width: getMediaSize(10),
                                                    // ),
                                                    Text(
                                                      controller.dayList[index],
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
          ],
        ))
      : controller.count.value == 1
          ? Container(
              height: 100,
              width: 100,
              color: Colors.red,
            )
          : Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ));
}
