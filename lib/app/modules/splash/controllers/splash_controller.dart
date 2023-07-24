// import 'dart:developer';
//
// import 'package:get/get.dart';
// import 'dart:async';
//
// class SplashController extends GetxController {
//   //TODO: Implement SplashController
//
//   final count = 0.obs;
//   @override
//   void onInit() {
//     Timer(const Duration(seconds: 3),(){
//       log('move on toother screen');
//       Get.toNamed('/home');
//       log('it shoule be there');
//
//     });
//     super.onInit();
//   }
//
//   @override
//   void onReady() {
//     super.onReady();
//   }
//
//   @override
//   void onClose() {
//     super.onClose();
//   }
//
//   void increment() => count.value++;
// }

import 'dart:async';

import 'package:get/get.dart';


class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {

    Timer(const Duration(seconds: 3), () {
      Get.toNamed('/intro') ;
    }) ;

    super.onInit();
  }



  void increment() => count.value++;
}