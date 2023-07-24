import 'package:get/get.dart';

class EventsController extends GetxController {
  //TODO: Implement EventsController

  final count = 0.obs;
  final List<String> titleList = [
    'Sleep Over Night',
    'Fishing Tournament',
    'GK Quiz',
    'Prom Night',
    'Theme Park',
  ];

  final List<String> descriptionList = [
    'A sleepover is a great treat for kids. Many schools use such an event as the culminating activity of the school year.',
    'A sleepover is a great treat for kids. Many schools use such an event as the culminating activity of the school year.',
    'A sleepover is a great treat for kids. Many schools use such an event as the culminating activity of the school year.',
    'A sleepover is a great treat for kids. Many schools use such an event as the culminating activity of the school year.',
    'A sleepover is a great treat for kids. Many schools use such an event as the culminating activity of the school year.',
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
