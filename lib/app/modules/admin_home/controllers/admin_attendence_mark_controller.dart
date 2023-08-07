import 'package:get/get.dart';

class AdminAttendenceMarkController extends GetxController {
  //TODO: Implement AdminAttendenceMarkController

  final count = 0.obs;
  List<String> studentName = [
    'Student 1',
    'Student 2',
    'Student 3',
    'Student 4',
    'Student 5',
    'Student 6',
    'Student 6',
    'Student 7',
    'Student 8',
    'Student 9',
    'Student 10',
    'Student 1',
    'Student 2',
    'Student 3',
    'Student 4',
    'Student 5',
    'Student 6',
    'Student 6',
    'Student 7',
    'Student 8',
    'Student 9',
    'Student 10'
  ];

  RxBool isPresent = false.obs;
  RxBool isAbsent = false.obs;
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
