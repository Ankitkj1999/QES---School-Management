import 'package:get/get.dart';

class SubjectController extends GetxController {
  //TODO: Implement SubjectController

  final count = 0.obs;
  final List<String> subjectList = [
    'Math',
    'Science',
    'English',
    'History',
    'Geography',
    'Physics',
    'Chemistry',
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
