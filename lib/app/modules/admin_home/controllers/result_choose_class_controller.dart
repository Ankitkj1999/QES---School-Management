import 'package:get/get.dart';

class ResultChooseClassController extends GetxController {
  //TODO: Implement ResultChooseClassController

  final count = 0.obs;

  List<String> classes = [
    '',
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
  List<String> section = ['', 'Section A', 'Section B', 'Section C'];
  List<String> subjects = [
    '',
    'Maths',
    'Science',
    'English',
    'Hindi',
    'SST',
    'CS'
  ];

  var selectedClass = ''.obs;
  var selectedSection = ''.obs;
  var selectedSubject = ''.obs;

  void updateSelectedClass(String value) {
    selectedClass.value = value;
  }

  void updateSelectedSection(String value) {
    selectedSection.value = value;
  }

  void updateSelectedSubject(String value) {
    selectedSubject.value = value;
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
