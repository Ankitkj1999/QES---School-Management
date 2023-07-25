import 'package:carousel_slider/carousel_slider.dart';
import 'package:ces/utils/app_colors.dart';
import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  IntroView({Key? key}) : super(key: key);
  final controller = Get.put(IntroController());

  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(child: slider),
      ),
    );
  }

  Widget get slider => CarouselSlider(
        carouselController: _carouselController,
        options: CarouselOptions(
          viewportFraction: 1,
          height: Get.height,

          enableInfiniteScroll: false, // Disable infinite scroll
          onPageChanged: (index, _) {
            controller.sliderIndex.value = index;
          },
        ),
        items: [
          // Screen 1
          Container(
            child: Builder(builder: (context) {
              return Container(
                height: Get.height,
                width: Get.width,
                color: Color(0xffffe9d4),
                child: Column(
                  children: [
                    SizedBox(
                      height: getMediaSize(80),
                    ),
                    SizedBox(
                      width: Get.width * 0.63,
                      child: Text(
                        'Mark Homework as completed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: getMediaSize(30),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getMediaSize(50),
                    ),
                    Container(
                      height: Get.height * 0.4,
                      child: SizedBox(
                        height: 200,
                        child: Image.asset(
                          AppImages.board_1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getMediaSize(80),
                    ),
                    GestureDetector(
                      onTap: () {
                        _carouselController.nextPage();
                      },
                      child: Container(
                        width: getMediaSize(70),
                        height: getMediaSize(70),
                        child: Image.asset(AppIcons.boardButton1),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),

          // Screen 2
          Container(
            child: Builder(builder: (context) {
              return Container(
                height: Get.height,
                width: Get.width,
                color: Color(0xffd4f5ff),
                child: Column(
                  children: [
                    SizedBox(
                      height: getMediaSize(80),
                    ),
                    SizedBox(
                      width: Get.width * 0.63,
                      child: Text(
                        'Rectify your Attendance',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: getMediaSize(30),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getMediaSize(50),
                    ),
                    Container(
                      height: Get.height * 0.4,
                      child: SizedBox(
                        height: 200,
                        child: Image.asset(
                          AppImages.board_2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getMediaSize(80),
                    ),
                    GestureDetector(
                      onTap: () {
                        _carouselController.nextPage();
                      },
                      child: Container(
                        width: getMediaSize(70),
                        height: getMediaSize(70),
                        child: Image.asset(AppIcons.boardButton1),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
// Screen 3
          Container(
            child: Builder(builder: (context) {
              return Container(
                height: Get.height,
                width: Get.width,
                color: Color(0xffffd4d4),
                child: Column(
                  children: [
                    SizedBox(
                      height: getMediaSize(80),
                    ),
                    SizedBox(
                      width: Get.width * 0.63,
                      child: Text(
                        'Student Exam & Report Card',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: getMediaSize(30),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getMediaSize(50),
                    ),
                    Container(
                      height: Get.height * 0.4,
                      child: SizedBox(
                        height: 200,
                        child: Image.asset(
                          AppImages.board_3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getMediaSize(80),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/login');
                      },
                      child: Container(
                        width: getMediaSize(70),
                        height: getMediaSize(70),
                        child: Image.asset(AppIcons.boardButton2),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ), // Screen 4
        ],
      );

  Widget customGestureDetectorButton({
    required String imageAssetPath,
    VoidCallback? onTap,
  }) {
    final _carouselController =
        Get.find<CarouselController>(); // Get the carousel controller

    return GestureDetector(
      onTap: onTap ??
          () => _carouselController
              .nextPage(), // Use onTap if provided, otherwise use the default function
      child: Container(
        width: Get.width * 0.23,
        height: Get.width * 0.228,
        decoration: ShapeDecoration(
          color: Color(0xFF21C1F3),
          shape: OvalBorder(),
        ),
        child: Image.asset(imageAssetPath),
      ),
    );
  }
}
