import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectClassController extends GetxController {
  //TODO: Implement SelectClassController
  final selectClassFormKey = GlobalKey<FormState>();
  final count = 0.obs;

  final selectedClass = "I".obs;
  final selectedSubject = "English".obs;

  void setSelectedClass(String value) {
    selectedClass.value = value;
  }

  void setSelectedSubject(String value) {
    selectedSubject.value = value;
  }

  final List<String> subjectList = ['English', 'Hindi', 'Maths', 'Science'];
  final List<String> classList = ['I', 'II', 'III', 'IV', 'V', 'VI'];

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
  void submit() {
    Get.toNamed('/assignments');
  }
}
