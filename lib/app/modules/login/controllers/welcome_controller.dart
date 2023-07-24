import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  //TODO: Implement WelcomeController

  final count = 0.obs;
  final formKey = GlobalKey<FormState>();
  final TextEditingController codeController = TextEditingController();

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

  // validateField(String value) {
  //   if (value.length < 6) {
  //     return "Enter 6 digit code";
  //   }
  //   return true;
  // }

  // Institution Code
  String? validateInstitutionCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an institution code';
    }

    final institutionCodeRegExp = RegExp(r'^\d{6}$');

    if (!institutionCodeRegExp.hasMatch(value)) {
      return 'Please enter a valid 6-digit institution code';
    }

    return null; // Return null if the input is valid
  }

  void increment() => count.value++;

  void submit() {
    Get.toNamed('/signup');
  }
}
