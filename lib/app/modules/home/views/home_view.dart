import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: customDrawer,
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AppImages.home_top_bg),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            )),
            child: Column(
              children: [
                customAppBar,
                customCarousel,
                Acedemic,
                Communication,
                Exam,
                Others
              ],
            ),
          ),
        ),
      ),
    );
  }

  // custom drawer
  Widget get customDrawer => Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0XFFFEE8E8),
              ),
              child: Container(
                // color: Colors.green,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width * 0.2,
                      height: Get.width * 0.2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(AppImages.girl_profile),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          width: 6,
                          color: Color(0xFFFFB5B6),
                        ),
                      ),
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
                              color: Color(0xFF303030),
                              fontSize: Get.width * 0.053,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.30,
                            ),
                          ),
                          SizedBox(height: Get.width * 0.00),
                          Text(
                            'Class VII B',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF848484),
                              fontSize: Get.width * 0.0426,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            AppIcons.editDrawer,
                            height: Get.height * 0.03,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // home
            ListTile(
              leading: Image.asset(
                AppIcons.home_icon,
                height: Get.width * 0.066,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  color: Color(0xFF4B4B4E),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.30,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            SizedBox(
              height: Get.width * getSize(10),
            ),
            // profile
            ListTile(
              leading: Image.asset(
                AppIcons.profile_icon,
                height: Get.width * 0.066,
              ),
              title: const Text(
                'Profile ',
                style: TextStyle(
                  color: Color(0xFF4B4B4E),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.30,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                Get.toNamed('/profile');
              },
            ),
            SizedBox(
              height: Get.width * getSize(10),
            ),
            // attendence
            ListTile(
              leading: Image.asset(
                AppIcons.attendence_icon,
                height: Get.width * 0.066,
              ),
              title: const Text(
                'Attencence',
                style: TextStyle(
                  color: Color(0xFF4B4B4E),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.30,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            SizedBox(
              height: Get.width * getSize(10),
            ),
            // about us
            ListTile(
              leading: Image.asset(
                AppIcons.about_icon,
                height: Get.width * 0.066,
              ),
              title: const Text(
                'About Us',
                style: TextStyle(
                  color: Color(0xFF4B4B4E),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.30,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            SizedBox(
              height: Get.width * getSize(10),
            ),
            // support us
            ListTile(
              leading: Image.asset(
                AppIcons.support_icon,
                height: Get.width * 0.066,
              ),
              title: const Text(
                'Support',
                style: TextStyle(
                  color: Color(0xFF4B4B4E),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.30,
                ),
              ),
              onTap: () {
                Get.toNamed('/support');
                // Update the state of the app.
                // ...
              },
            ),
            SizedBox(
              height: Get.width * getSize(10),
            ),
            //Terms & cond.
            ListTile(
              leading: Image.asset(
                AppIcons.terms_icon,
                height: Get.width * 0.066,
              ),
              title: const Text(
                'Terms & Conditions',
                style: TextStyle(
                  color: Color(0xFF4B4B4E),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.30,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            SizedBox(
              height: Get.width * getSize(10),
            ),
            SizedBox(
              height: Get.width * 0.3,
            ),
            // Logout
            ListTile(
              leading: Image.asset(
                AppIcons.logout_icon,
                height: Get.width * 0.1066,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Color(0xFFFF0000),
                  fontSize: 24.35,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.52,
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      );
  // custom app bar
  Widget get customAppBar => Container(
        margin: EdgeInsets.fromLTRB(15, 10, 10, 15),

        // padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Builder(builder: (context) {
          return AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Container(
                padding: EdgeInsets.all(4),
                margin: EdgeInsets.all(4),
                width: Get.width * getSize(53),
                height: Get.width * getSize(53),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppImages.boy_profile),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // profile image
                Row(
                  children: [
                    // student name
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Raghav Shaje',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF786C82),
                                fontSize: Get.width * 0.05,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.30,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Class VII B',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF786C82),
                                fontSize: Get.width * 0.032,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.30,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                // notification icon
                Container(
                  // color: Colors.red,
                  width: Get.width * getSize(20),
                  height: Get.width * getSize(20),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/notification');
                    },
                    child: Image.asset(
                      AppIcons.bell_icon,
                      height: Get.width * getSize(40),
                    ),
                    // child: Icon(
                    //   Icons.notifications_outlined,
                    //   size: 25,
                    //   color: Color(0xFF786C82),
                    // ),
                  ),
                ),
              ],
            ),
          );
        }),
      );

  // carousel

  Widget get customCarousel => Container(
        // color: Colors.red,
        child: GFCarousel(
          height: Get.width * getSize(180),
          hasPagination: true,
          autoPlay: true,
          viewportFraction: 1.20,
          passiveIndicator: Color(0xffe4e4e4),
          activeIndicator: Color(0XFF473f97),
          aspectRatio: 2,
          items: controller.imageList.map(
            (url) {
              return Container(
                margin: EdgeInsets.fromLTRB(15, 10, 15, 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Image.asset(AppImages.carousel,
                      fit: BoxFit.cover, width: Get.width * 0.9),
                ),
              );
            },
          ).toList(),
          onPageChanged: (index) {
            // setState(() {
            // index;
            // });
          },
        ),
      );

  // Acedemics

  Widget get Acedemic => Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text
            Row(
              children: [
                SizedBox(
                  width: Get.width * getSize(20),
                ),
                Text(
                  'Academics',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF786C82),
                    fontSize: Get.width * 0.048,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.width * 0.03,
            ),
            Container(
              // color: Colors.red,
              height: Get.width * 0.32,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // One
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/select_class');
                    },
                    child: Container(
                      height: Get.width * 0.2667,
                      width: Get.width * 0.2667,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFFADC1BE),
                          ),
                          BoxShadow(
                              color: Color(0xFFE4FFFA),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset: Offset(0, 5)),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: Get.width * 0.128,
                                child: Image.asset(AppIcons.homework)),
                            SizedBox(
                              height: Get.width * 0.005,
                            ),
                            SizedBox(
                              width: Get.width * 0.2,
                              // height: Get.width * 0.0746,
                              child: Text(
                                'Homework',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF786C82),
                                  fontSize: Get.width * 0.032,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.28,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Two
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/syllabus');
                    },
                    child: Container(
                      height: Get.width * 0.2667,
                      width: Get.width * 0.2667,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0XFFCCB0BF),
                          ),
                          BoxShadow(
                              color: Color(0xFFFFDCEF),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset: Offset(0, 5)),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: Get.width * 0.128,
                                child: Image.asset(AppIcons.books)),
                            SizedBox(
                              height: Get.width * 0.005,
                            ),
                            SizedBox(
                              width: Get.width * 0.2,
                              // height: Get.width * 0.0746,
                              child: Text(
                                'Syllabus',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF786C82),
                                  fontSize: Get.width * 0.032,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.28,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Three
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/timetable');
                    },
                    child: Container(
                      height: Get.width * 0.2667,
                      width: Get.width * 0.2667,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFFADC1BE),
                          ),
                          BoxShadow(
                              color: Color(0xFFE4FFFA),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset: Offset(0, 5)),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: Get.width * 0.128,
                                child: Image.asset(AppIcons.class_routine)),
                            SizedBox(
                              height: Get.width * 0.005,
                            ),
                            SizedBox(
                              width: Get.width * 0.2,
                              // height: Get.width * 0.0946,
                              child: Text(
                                'Class \n Routine',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF786C82),
                                  fontSize: Get.width * 0.032,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.28,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.red,
              height: Get.width * 0.32,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // One
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/subject');
                    },
                    child: Container(
                      height: Get.width * 0.2667,
                      width: Get.width * 0.2667,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0XFFCCB0BF),
                          ),
                          BoxShadow(
                              color: Color(0xFFFFDCEF),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset: Offset(0, 5)),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: Get.width * 0.128,
                                child: Image.asset(AppIcons.study_load)),
                            SizedBox(
                              height: Get.width * 0.005,
                            ),
                            SizedBox(
                              width: Get.width * 0.2,
                              // height: Get.width * 0.0946,
                              child: Text(
                                'Study Material',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF786C82),
                                  fontSize: Get.width * 0.032,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.28,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Two
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/live_class');
                    },
                    child: Container(
                      height: Get.width * 0.2667,
                      width: Get.width * 0.2667,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFFADC1BE),
                          ),
                          BoxShadow(
                              color: Color(0xFFE4FFFA),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset: Offset(0, 5)),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: Get.width * 0.128,
                                child: Image.asset(AppIcons.live_classes)),
                            SizedBox(
                              height: Get.width * 0.005,
                            ),
                            SizedBox(
                              width: Get.width * 0.2,
                              // height: Get.width * 0.0746,
                              child: Text(
                                'Live Class',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF786C82),
                                  fontSize: Get.width * 0.032,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.28,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // three
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/attendence');
                    },
                    child: Container(
                      height: Get.width * 0.2667,
                      width: Get.width * 0.2667,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0XFFCCB0BF),
                          ),
                          BoxShadow(
                              color: Color(0xFFFFDCEF),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset: Offset(0, 5)),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: Get.width * 0.128,
                                child: Image.asset(AppIcons.appointemnt)),
                            SizedBox(
                              height: Get.width * 0.005,
                            ),
                            SizedBox(
                              width: Get.width * 0.2,
                              // height: Get.width * 0.0746,
                              child: Text(
                                'Attendence',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF786C82),
                                  fontSize: Get.width * 0.032,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.28,
                                ),
                              ),
                            )
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
      );

  // communication
  Widget get Communication => Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text
            Row(
              children: [
                SizedBox(
                  width: Get.width * getSize(20),
                ),
                Text(
                  'Communication',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF786C82),
                    fontSize: Get.width * 0.048,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.width * 0.03,
            ),
            Container(
              // color: Colors.red,
              height: Get.width * 0.32,
              width: Get.width,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // One
                  SizedBox(
                    width: Get.width * getSize(20),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/chat_list');
                    },
                    child: Container(
                      height: Get.width * 0.245,
                      width: Get.width * 0.2133,
                      decoration: BoxDecoration(
                        color: Color(0XFFFCA964),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F9A9A9A),
                            blurRadius: 5,
                            offset: Offset(4, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: Get.width * getSize(36),
                              child: Image.asset(AppIcons.messages)),
                          SizedBox(
                            height: Get.width * 0.005,
                          ),
                          Container(
                            width: Get.width * 0.165,
                            height: Get.width * 0.071,
                            child: Text(
                              'Message\n faculty',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * 0.024,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.22,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Two
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/ask_doubt');
                    },
                    child: Container(
                      height: Get.width * 0.245,
                      width: Get.width * 0.2133,
                      decoration: BoxDecoration(
                        color: Color(0XFF7D7EDA),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F9A9A9A),
                            blurRadius: 5,
                            offset: Offset(4, 8),
                            spreadRadius: 0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: Get.width * getSize(36),
                              child: Image.asset(AppIcons.contact)),
                          SizedBox(
                            height: Get.width * 0.005,
                          ),
                          Container(
                            width: Get.width * 0.165,
                            height: Get.width * 0.071,
                            child: Text(
                              'Contact Directory',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * 0.024,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.22,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Three
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/suggestions');
                    },
                    child: Container(
                      height: Get.width * 0.245,
                      width: Get.width * 0.2133,
                      decoration: BoxDecoration(
                        color: Color(0XFF33C37E),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F9A9A9A),
                            blurRadius: 5,
                            offset: Offset(4, 8),
                            spreadRadius: 0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: Get.width * getSize(36),
                              child: Image.asset(AppIcons.suggestions)),
                          SizedBox(
                            height: Get.width * 0.005,
                          ),
                          Container(
                            width: Get.width * 0.165,
                            height: Get.width * 0.061,
                            child: Text(
                              'Suggestions',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * 0.024,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.22,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * getSize(20),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  // Exam
  Widget get Exam => Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text
            Row(
              children: [
                SizedBox(
                  width: Get.width * getSize(20),
                ),
                Text(
                  'Exam',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF786C82),
                    fontSize: Get.width * 0.048,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.width * 0.03,
            ),
            Container(
              // color: Colors.red,
              // height: Get.width * 0.32,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: Get.width * getSize(20),
                  ),
                  // One
                  Column(
                    children: [
                      Container(
                        height: Get.width * 0.2,
                        width: Get.width * 0.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppIcons.pink_elipse)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                          child: Container(
                            height: Get.width * 0.09,
                            width: Get.width * 0.09,
                            child: Image.asset(
                              AppIcons.result,
                              width: 60,
                              height: Get.width * 0.09,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 78,
                        child: Text(
                          'Result',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF786C82),
                            fontSize: Get.width * 0.032,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.28,
                          ),
                        ),
                      )
                    ],
                  ),
                  // Two
                  Column(
                    children: [
                      Container(
                        height: Get.width * 0.2,
                        width: Get.width * 0.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppIcons.purple_elipse)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                          child: Container(
                            height: Get.width * 0.09,
                            width: Get.width * 0.09,
                            child: Image.asset(
                              AppIcons.quiz,
                              width: 60,
                              height: Get.width * 0.09,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 78,
                        child: Text(
                          'Quiz',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF786C82),
                            fontSize: Get.width * 0.032,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.28,
                          ),
                        ),
                      )
                    ],
                  ),
                  // Three
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/exam_list');
                    },
                    child: Column(
                      children: [
                        Container(
                          height: Get.width * 0.2,
                          width: Get.width * 0.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppIcons.blue_elipse)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(17, 17, 17, 22),
                            child: Container(
                              height: Get.width * 0.09,
                              width: Get.width * 0.09,
                              child: Image.asset(
                                AppIcons.exam,
                                width: 60,
                                height: Get.width * 0.09,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 78,
                          child: Text(
                            'Exam',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF786C82),
                              fontSize: Get.width * 0.032,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.28,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Get.width * getSize(20),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

// others
  Widget get Others => Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text
            Row(
              children: [
                SizedBox(
                  width: Get.width * getSize(20),
                ),
                Text(
                  'Others',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF786C82),
                    fontSize: Get.width * 0.048,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.width * 0.03,
            ),
            Container(
              // color: Colors.red,
              height: Get.width * 0.32,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: Get.width * getSize(20),
                  ),
                  // One
                  Column(
                    children: [
                      Container(
                        height: Get.width * getSize(61),
                        width: Get.width * getSize(72),
                        decoration: BoxDecoration(
                          color: Color(0XFFD0F1FF),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: Get.width * getSize(55),
                            width: Get.width * getSize(55),
                            child: Image.asset(
                              AppIcons.gallery,
                              width: 60,
                              height: Get.width * 0.09,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 78,
                        child: Text(
                          'Gallery',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF786C82),
                            fontSize: Get.width * getSize(11),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.28,
                          ),
                        ),
                      )
                    ],
                  ),
                  // Two
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/events');
                    },
                    child: Column(
                      children: [
                        Container(
                          height: Get.width * getSize(61),
                          width: Get.width * getSize(72),
                          decoration: BoxDecoration(
                            color: Color(0XFFD7F4DD),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              height: Get.width * 0.09,
                              width: Get.width * 0.09,
                              child: Image.asset(
                                AppIcons.event,
                                width: 60,
                                height: Get.width * 0.09,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 78,
                          child: Text(
                            'Event',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF786C82),
                              fontSize: Get.width * getSize(11),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.28,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // Three
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/fee_details');
                    },
                    child: Column(
                      children: [
                        Container(
                          height: Get.width * getSize(61),
                          width: Get.width * getSize(72),
                          decoration: BoxDecoration(
                            color: Color(0XFFFFC7C5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              height: Get.width * 0.09,
                              width: Get.width * 0.09,
                              child: Image.asset(
                                AppIcons.details,
                                width: 60,
                                height: Get.width * 0.09,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 78,
                          child: Text(
                            'Fee Details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF786C82),
                              fontSize: Get.width * getSize(11),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.28,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Get.width * getSize(20),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
