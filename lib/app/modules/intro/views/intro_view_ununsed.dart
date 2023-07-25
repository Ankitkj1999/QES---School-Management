import 'package:carousel_slider/carousel_slider.dart';
import 'package:ces/utils/app_colors.dart';
import 'package:ces/utils/app_images.dart';
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
                color: AppColors.primaryLightBlue,
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.023,
                    ),
                    Container(
                      height: Get.height * 0.4,
                      child: SizedBox(
                        height: 200,
                        child: Image.asset(
                          AppImages.splash_1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Expanded(
                      child: Container(
                        // height: Get.height * 0.5,
                        width: Get.width,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 10,
                              offset: Offset(0, -5),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: Get.width * 0.63,
                              child: Text(
                                'SINGLE APPLICATION FOR STUDENTS, TEACHERS PARENTS & SCHOOLS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF786C82),
                                  fontSize: Get.width * 0.053,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _carouselController.nextPage();
                              },
                              child: Container(
                                width: Get.width * 0.23,
                                height: Get.width * 0.23,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF21C1F3),
                                  shape: OvalBorder(),
                                ),
                                child: Image.asset(AppIcons.splashIcon_1),
                              ),
                            )
                          ],
                        ),
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
                color: Color(0XFFFDF2F0),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.023,
                    ),
                    Container(
                      height: Get.height * 0.4,
                      child: SizedBox(
                        height: 200,
                        child: Image.asset(
                          AppImages.splash_2,
                          fit: BoxFit.fitWidth,
                          height: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Expanded(
                      child: Container(
                        height: Get.height * 0.5,
                        width: Get.width,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 10,
                              offset: Offset(0, -5),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: Get.width * 0.63,
                              child: Text(
                                'One Stop Solution for all your instituation needs.'
                                    .toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF786C82),
                                  fontSize: Get.width * 0.053,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _carouselController.nextPage();
                              },
                              child: Container(
                                width: Get.width * 0.23,
                                height: Get.width * 0.23,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF21C1F3),
                                  shape: OvalBorder(),
                                ),
                                child: Image.asset(AppIcons.splashIcon_1),
                              ),
                            )
                          ],
                        ),
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
                color: Color(0XFF30B5B2),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.023,
                    ),
                    Container(
                      height: Get.height * 0.4,
                      child: SizedBox(
                        height: 200,
                        child: Image.asset(
                          AppImages.splash_3,
                          fit: BoxFit.cover,
                          height: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Expanded(
                      child: Container(
                        height: Get.height * 0.5,
                        width: Get.width,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 10,
                              offset: Offset(0, -5),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: Get.width * 0.63,
                              child: Text(
                                'Stay connected & updated'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF786C82),
                                  fontSize: Get.width * 0.053,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // controller.carouselController.value
                                //     .nextPage();
                                Get.toNamed('/login');
                              },
                              child: Container(
                                width: Get.width * 0.23,
                                height: Get.width * 0.22,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF21C1F3),
                                  shape: OvalBorder(),
                                ),
                                child: Image.asset(AppIcons.splashIcon_2),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),

          // Screen 4
          // Container(
          //   child: Builder(builder: (context) {
          //     return Container(
          //       height: Get.height,
          //       width: Get.width,
          //       color: Color(0XFFFDF2F0),
          //       child: Column(
          //         children: [
          //           SizedBox(
          //             height: Get.height * 0.023,
          //           ),
          //           Container(
          //             height: Get.height * 0.4,
          //             child: SizedBox(
          //               height: 200,
          //               child: Image.asset(
          //                 AppImages.splash_4,
          //                 fit: BoxFit.cover,
          //                 height: 100,
          //               ),
          //             ),
          //           ),
          //           SizedBox(
          //             height: Get.height * 0.03,
          //           ),
          //           Expanded(
          //             child: Container(
          //               height: Get.height * 0.5,
          //               width: Get.width,
          //               decoration: ShapeDecoration(
          //                 color: Colors.white,
          //                 shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.only(
          //                     topLeft: Radius.circular(30),
          //                     topRight: Radius.circular(30),
          //                   ),
          //                 ),
          //                 shadows: [
          //                   BoxShadow(
          //                     color: Color(0x3F000000),
          //                     blurRadius: 10,
          //                     offset: Offset(0, -5),
          //                     spreadRadius: 0,
          //                   )
          //                 ],
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                 children: [
          //                   SizedBox(
          //                     width: Get.width * 0.63,
          //                     child: Text(
          //                       'Stay connected & updated'.toUpperCase(),
          //                       textAlign: TextAlign.center,
          //                       style: TextStyle(
          //                         color: Color(0xFF786C82),
          //                         fontSize: Get.width * 0.053,
          //                         fontFamily: 'Roboto',
          //                         fontWeight: FontWeight.w500,
          //                         letterSpacing: -0.30,
          //                       ),
          //                     ),
          //                   ),
          //                   GestureDetector(
          //                     onTap: () {
          //                       Get.toNamed('/login');
          //                     },
          //                     child: Container(
          //                       width: Get.width * 0.23,
          //                       height: Get.width * 0.22,
          //                       decoration: ShapeDecoration(
          //                         color: Color(0xFF21C1F3),
          //                         shape: OvalBorder(),
          //                       ),
          //                       child: Image.asset(AppIcons.splashIcon_2),
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     );
          //   }),
          // ),
        ],
      );

  // Widget customGestureDetector({
  //   required String imageAssetPath,
  //   required VoidCallback onTap,
  // }) {
  //   return GestureDetector(
  //     onTap: onTap,
  //     child: Container(
  //       width: Get.width * 0.23,
  //       height: Get.width * 0.23,
  //       decoration: ShapeDecoration(
  //         color: Color(0xFF21C1F3),
  //         shape: OvalBorder(),
  //       ),
  //       child: Image.asset(imageAssetPath),
  //     ),
  //   );
  // }

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
