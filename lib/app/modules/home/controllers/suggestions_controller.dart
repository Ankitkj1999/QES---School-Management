import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SuggestionsController extends GetxController {
  //TODO: Implement SuggestionsController
  final suggestionFormKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  final count = 0.obs;
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

  String? validateSuggestionTitle(String value) {
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

  String? validateSuggestionDescription(String value) {
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
