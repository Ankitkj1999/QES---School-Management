import 'package:get/get.dart';

import 'package:ces/app/modules/admin_home/controllers/admin_profile_controller.dart';

import '../controllers/admin_home_controller.dart';

class AdminHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<AdminHomeController>(
      () => AdminHomeController(),
    );
  }
}
