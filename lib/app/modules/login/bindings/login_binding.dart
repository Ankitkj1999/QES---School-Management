import 'package:get/get.dart';

import 'package:ces/app/modules/login/controllers/welcome_controller.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(
      () => WelcomeController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
