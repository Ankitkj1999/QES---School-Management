import 'package:get/get.dart';

import 'package:ces/app/modules/chat_list/controllers/chat_controller.dart';

import '../controllers/chat_list_controller.dart';

class ChatListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(
      () => ChatController(),
    );
    Get.lazyPut<ChatListController>(
      () => ChatListController(),
    );
  }
}
