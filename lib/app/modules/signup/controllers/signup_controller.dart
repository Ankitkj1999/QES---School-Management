import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  final count = 0.obs;
  final signupFormKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateCcontroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController schoolController = TextEditingController();
  final TextEditingController classController = TextEditingController();
  final TextEditingController batchController = TextEditingController();
  final TextEditingController rollNOController = TextEditingController();
  final TextEditingController dobController = TextEditingController();

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
    Get.toNamed('/pending');
  }

  // Name validator
  String? validateName(String value) {
    value = value.trim();

    if (value.isEmpty) {
      return 'Please enter a name';
    }

    if (value.length < 3) {
      return 'Name should be at least 3 characters long';
    }

    RegExp regex = RegExp(r"^[a-zA-Z\s'-]+$");

    if (!regex.hasMatch(value)) {
      return 'Name can only contain alphabetical letters';
    }

    return null; // Return null if the input is valid
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

  // mobile
  String? validateMobileNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a mobile number';
    }

    final mobileNumberRegExp = RegExp(r'^\d{10}$');

    if (!mobileNumberRegExp.hasMatch(value)) {
      return 'Please enter a valid 10-digit mobile number';
    }

    return null; // Return null if the input is valid
  }

  // Address
  String? validateHomeAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a home address';
    }

    // Additional validation rules can be added based on specific requirements
    // For example, you can check for a minimum length, specific characters, etc.

    return null; // Return null if the input is valid
  }

  // City name
  String? validateCityName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a city name';
    }

    // Add any specific validation rules for state names here
    // For example, you can check if the state name is in a predefined list of valid states.

    return null; // Return null if the input is valid
  }

  // State name
  String? validateStateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a state name';
    }

    // Add any specific validation rules for state names here
    // For example, you can check if the state name is in a predefined list of valid states.

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

  // confirm password
  String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }

    if (value != password) {
      print('Current Enterent $value and previous enterent is $password');
      return 'Passwords do not match';
    }

    return null; // Return null if the input is valid
  }

  // School Name
  String? validateSchoolName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a school name';
    }

    // Additional validation rules can be added based on your requirements

    return null; // Return null if the input is valid
  }

  // Class
  String? validateClassName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a class name';
    }

    // Add additional validation rules for the class name if needed

    return null; // Return null if the input is valid
  }

  // School Batch
  String? validateSchoolBatch(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a school batch';
    }

    final batchRegExp = RegExp(r'^\d{4}-\d{4}$');

    if (!batchRegExp.hasMatch(value)) {
      return 'Please enter a valid school batch in the format YYYY-YYYY';
    }

    return null; // Return null if the input is valid
  }

  // Roll Number
  String? validateRollNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a roll number';
    }

    final rollNumberRegExp = RegExp(r'\d{3}$');

    if (!rollNumberRegExp.hasMatch(value)) {
      return 'Please enter a valid roll number in the format XXX';
    }

    return null; // Return null if the input is valid
  }

  // Date of Birth
  String? validateDateOfBirth(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a date of birth';
    }

    final dateOfBirthRegExp = RegExp(r'^\d{2}/\d{2}/\d{4}$');

    if (!dateOfBirthRegExp.hasMatch(value)) {
      return 'Date of birth in the format DD/MM/YYYY';
    }

    // Split the date components
    final dateComponents = value.split('/');
    final day = int.tryParse(dateComponents[0]);
    final month = int.tryParse(dateComponents[1]);
    final year = int.tryParse(dateComponents[2]);

    // Check if the date components are valid
    if (day == null || month == null || year == null) {
      return 'Please enter a valid date of birth';
    }

    // Perform additional validation if needed
    // For example, check if the date is in the past

    return null; // Return null if the input is valid
  }
}
