import 'package:get/get.dart';

class FilesController extends GetxController {
  //TODO: Implement FilesController

  final count = 0.obs;
  final List<String> ebookList = [
    "Stereochemistry",
    'Organic Compounds',
    'Atomic Mass Of Element',
    'Salt Analysis',
    'Columb\'s Law',
    'Motion',
    'Circles',
  ];
  final List<String> videoList = [
    "Set Theory",
    'Theory Of Computation',
    'Electro Chemistery',
    'Gravitation',
    'Columb\'s Law',
    'Motion',
    'Circles',
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
