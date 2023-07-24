import 'package:ces/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({Key? key}) : super(key: key);

  final SplashController splashController = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
            child: Image(
          image: AssetImage(AppImages.splash_placeholder),
          width: Get.width * 0.6,
        )),
      ),
    );
  }
}
