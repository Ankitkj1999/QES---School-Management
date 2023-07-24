import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AskDoubtController extends GetxController {
  //TODO: Implement AskDoubtController

  final count = 0.obs;
  final askDountFormKey = GlobalKey<FormState>();
  final TextEditingController classTeacherController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
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

  void submit() {}

  String? validateClassTeacherName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a class teacher name';
    }

    value = value.trim();

    if (value.length < 3) {
      return 'Class teacher name should be at least 3 characters long';
    }

    // Add any additional validation rules for the class teacher name here

    return null; // Return null if the input is valid
  }

  String? validateTitle(String value) {
    value = value.trim();

    if (value.isEmpty) {
      return 'Please enter a title';
    }

    if (value.length < 5) {
      return 'Title should be at least 5 characters long';
    }

    // Add any additional validation rules for suggestion title here

    return null; // Return null if the input is valid
  }

  String? validateDescription(String value) {
    value = value.trim();

    if (value.isEmpty) {
      return 'Please enter a description';
    }

    if (value.length < 50) {
      return 'Description should be at least 50 characters long';
    }

    // Add any additional validation rules for suggestion description here

    return null; // Return null if the input is valid
  }
}
