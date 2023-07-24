import 'package:get/get.dart';

class AttendenceController extends GetxController {
  //TODO: Implement AttendenceController

  final count = 0.obs;
  Rx<DateTime> viewMonth = DateTime.now().obs;
  DateTime today = DateTime.now();

  DateTime monthsToShow = DateTime.now();

  final List<String> holdayList = [
    'Holi',
    'Diwali',
    'Gowardhan Puja',
    'Crismas',
    'New Year Eve',
  ];

  final List<String> dateList = [
    '24th December',
    '24th December',
    '24th December',
    '24th December',
    '24th December',
  ];
  final List<String> dayList = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
  ];

  List<DateTime> presentDates = [
    DateTime(2023, 7, 1),
    DateTime(2023, 7, 3),
    DateTime(2023, 7, 4),
    DateTime(2023, 7, 5),
    DateTime(2023, 7, 6),
    DateTime(2023, 7, 10),
    DateTime(2023, 7, 11),
    DateTime(2023, 7, 15),
    DateTime(2023, 7, 22),
  ];
  List<DateTime> absentDates = [
    DateTime(2023, 7, 7),
    DateTime(2023, 7, 8),
    DateTime(2023, 7, 12),
    DateTime(2023, 7, 13),
    DateTime(2023, 7, 14),
    DateTime(2023, 7, 17),
    DateTime(2023, 7, 18),
    DateTime(2023, 7, 19),
    DateTime(2023, 7, 20),
  ];

  // Define a function to check if the day, month, and year match
  bool isSameDate(DateTime date1, DateTime date2) {
    return date1.day == date2.day &&
        date1.month == date2.month &&
        date1.year == date2.year;
  }

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
