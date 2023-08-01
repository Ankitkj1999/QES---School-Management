import 'package:get/get.dart';

import 'package:ces/app/modules/signup/controllers/pending_controller.dart';

import '../../login/controllers/login_controller.dart';
import '../controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(LoginController());

    Get.lazyPut<LoginController>(() => LoginController());

    Get.lazyPut<PendingController>(
      () => PendingController(),
    );
    Get.lazyPut<SignupController>(
      () => SignupController(),
    );
  }
}
