import 'package:get/get.dart';

class SyllabusController extends GetxController {
  //TODO: Implement SyllabusController

  final count = 0.obs;
  final List<String> subjectList = [
    'Math',
    'Science',
    'English',
    'History',
    'Geography'
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
