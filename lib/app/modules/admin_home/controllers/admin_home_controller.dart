import 'package:ces/utils/app_images.dart';
import 'package:get/get.dart';

class AdminHomeController extends GetxController {
  //TODO: Implement AdminHomeController

  final count = 0.obs;

  List<String> dashIcons = [
    AppIcons.admin_attendence,
    AppIcons.admin_homework,
    AppIcons.admin_result,
    AppIcons.admin_exam,
    AppIcons.admin_solution,
    AppIcons.admin_event,
    AppIcons.admin_account
  ];

  List<String> dashTitles = [
    'Attendence',
    'Homework',
    'Results',
    'Exams',
    'Solutions',
    'Events',
    'Accounts'
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
