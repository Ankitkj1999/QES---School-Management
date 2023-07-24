import 'package:get/get.dart';

class LiveClassController extends GetxController {
  //TODO: Implement LiveClassController

  final count = 0.obs;
  final List<String> classNameList = [
    "Live 1 : Recording I 07/01",
    "Live 2 : Recording II 07/01",
    "Live 3 : Recording III 07/01",
    "Live 4 : Recording IV 07/01",
    "Live 5 : Recording V 07/01",
  ];
  final List<String> teacherNameList = [
    'Rashmi Chauhan',
    'Manoj Srivastav',
    'Bhagwati Wasu',
    'Saket Singh',
    'Vishnu Chauhan',
  ];
  final List<String> startDateList = [
    '2022-01-07',
    '2022-01-07',
    '2022-01-07',
    '2022-01-07',
    '2022-01-07',
  ];
  final List<String> startTimeList = [
    '09:00am',
    '09:00am',
    '09:00am',
    '09:00am',
    '09:00am',
  ];
  final List<String> imgageList = [
    'assets/images/live_class.png',
    'assets/images/live_class.png',
    'assets/images/live_class.png',
    'assets/images/live_class.png',
    'assets/images/live_class.png',
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
