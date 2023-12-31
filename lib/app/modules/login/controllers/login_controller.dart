import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  final loginFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RxBool selectedStudent = false.obs;
  RxBool selectedParent = false.obs;
  RxBool selectedTeacher = false.obs;
  RxBool selectedSchool = false.obs;

  void onToggleSelectedStudent(bool newSelectedValue) {
    selectedStudent.value = newSelectedValue;
  }

  void onToggleSelectedTeacher(bool newSelectedValue) {
    selectedTeacher.value = newSelectedValue;
  }

  void onToggleSelectedParent(bool newSelectedValue) {
    selectedParent.value = newSelectedValue;
  }

  void onToggleSelectedSchool(bool newSelectedValue) {
    selectedSchool.value = newSelectedValue;
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
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
  void succesLoginSnack() =>
      Get.snackbar('Login', 'Successful', snackPosition: SnackPosition.BOTTOM);

  void login() {
    // TODO: Perform login logic here
    if (selectedStudent.value == true) {
      Get.toNamed('/welcome');
      succesLoginSnack();
    } else if (selectedParent.value == true) {
      Get.toNamed('/welcome');
      succesLoginSnack();
    } else if (selectedTeacher.value == true) {
      Get.toNamed('/welcome');
      succesLoginSnack();
    } else if (selectedSchool.value == true) {
      Get.toNamed('/welcome');
      succesLoginSnack();
    } else {
      Get.snackbar('Login Unsuccessful', 'Please selct a profile!',
          snackPosition: SnackPosition.BOTTOM);

      // Get.toNamed('/welcome');
    }
    // Get.toNamed('/welcome');
    emailController.clear();
    passwordController.clear();
  }

  // Email validator
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    }

    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegExp.hasMatch(value)) {
      return 'Format: example@company.com';
    }

    return null; // Return null if the input is valid
  }

  // Password
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }

    final passwordRegExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

    if (!passwordRegExp.hasMatch(value)) {
      return 'Password must contain at least 8 characters, including one uppercase letter, one lowercase letter, one digit, and one special character.';
    }

    return null; // Return null if the input is valid
  }
}
