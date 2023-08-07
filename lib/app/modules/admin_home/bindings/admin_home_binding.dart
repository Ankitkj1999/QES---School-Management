import 'package:get/get.dart';

import 'package:ces/app/modules/admin_home/controllers/admin_attendence_mark_controller.dart';
import 'package:ces/app/modules/admin_home/controllers/admin_attendence_option_controller.dart';
import 'package:ces/app/modules/admin_home/controllers/admin_attendence_select_controller.dart';
import 'package:ces/app/modules/admin_home/controllers/admin_mark_result_controller.dart';
import 'package:ces/app/modules/admin_home/controllers/admin_profile_controller.dart';
import 'package:ces/app/modules/admin_home/controllers/result_choose_class_controller.dart';
import 'package:ces/app/modules/admin_home/controllers/result_choose_term_controller.dart';
import 'package:ces/app/modules/admin_home/controllers/support_controller.dart';

import '../controllers/admin_home_controller.dart';

class AdminHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminMarkResultController>(
      () => AdminMarkResultController(),
    );
    Get.lazyPut<ResultChooseClassController>(
      () => ResultChooseClassController(),
    );
    Get.lazyPut<ResultChooseTermController>(
      () => ResultChooseTermController(),
    );
    Get.lazyPut<AdminAttendenceMarkController>(
      () => AdminAttendenceMarkController(),
    );
    Get.lazyPut<AdminAttendenceSelectController>(
      () => AdminAttendenceSelectController(),
    );
    Get.lazyPut<AdminAttendenceOptionController>(
      () => AdminAttendenceOptionController(),
    );
    Get.lazyPut<SupportController>(
      () => SupportController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<AdminHomeController>(
      () => AdminHomeController(),
    );
  }
}
