import 'package:get/get.dart';

class TimetaleController extends GetxController {
  //TODO: Implement TimetaleController

  final count = 0.obs;
  final List<String> routineSubjectList = [
    'English',
    'Physics',
    'Computer Science',
    'DBMS',
    'Sports Education',
  ];

  final List<String> timeList = [
    '08:15am - 09:00am',
    '09:15am - 10:00am',
    '11:15am - 12:00pm',
    '01:15pm - 02:00pm',
    '03:15pm - 04:00pm',
  ];
  final List<String> teacherNameList = [
    'Kavita Sharma',
    'Deepti Shrivastav',
    'Rashmi Gautam',
    'Sahil Khanna',
    'Bhagwati Wasu',
  ];
  final List<String> periodList = [
    'Period 1',
    'Period 2',
    'Period 3',
    'Period 4',
    'Period 5',
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
