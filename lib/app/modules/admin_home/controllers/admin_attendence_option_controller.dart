import 'package:get/get.dart';

class AdminAttendenceOptionController extends GetxController {
  //TODO: Implement AdminAttendenceOptionController

  final count = 0.obs;
  List<String> classes = [
    'Select Class',
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
    'Class 6',
    'Class 7',
    'Class 8',
    'Class 9',
    'Class 10',
    'Class 11',
    'Class 12'
  ];
  List<String> section = ['Section', 'Section A', 'Section B', 'Section C'];
  List<String> subjects = [
    'Subject',
    'Maths',
    'Science',
    'English',
    'Hindi',
    'SST',
    'CS'
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

  var selectedClass = 'Select Class'.obs;
  var selectedSection = 'Section'.obs;
  var selectedSubject = 'Subject'.obs;

  void updateSelectedClass(String value) {
    selectedClass.value = value;
  }

  void updateSelectedSection(String value) {
    selectedSection.value = value;
  }

  void updateSelectedSubject(String value) {
    selectedSubject.value = value;
  }
}
