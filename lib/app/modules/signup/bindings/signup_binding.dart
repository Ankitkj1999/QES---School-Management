import 'package:get/get.dart';

import 'package:ces/app/modules/signup/controllers/pending_controller.dart';

import '../controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PendingController>(
      () => PendingController(),
    );
    Get.lazyPut<SignupController>(
      () => SignupController(),
    );
  }
}
