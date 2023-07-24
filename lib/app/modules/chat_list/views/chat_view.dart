import 'package:ces/app/modules/chat_list/controllers/chat_controller.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: Container(
        //   color: Colors.transparent,
        //   height: getMediaSize(65),
        //   child: messageBox,
        // ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          child: messageBox,
          height: getMediaSize(45),
          width: getMediaSize(350),
          // color: Colors.red,
        ),
        appBar: PreferredSize(
            child: topView, preferredSize: Size.fromHeight(getMediaSize(100))),
        body: SingleChildScrollView(
          child: Container(
            // height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage(AppImages.beans_bg),
              ),
            ),
            child: Column(
              children: [
                // topView,
                chatView,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get topView => Container(
        padding: EdgeInsets.all(10),
        width: Get.width,
        height: Get.width * 0.3,
        decoration: const BoxDecoration(

            // color: Color(0XFF473F97),
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.purpel_signup),
            )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.red,
                // padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    AppIcons.back_icon,
                    width: Get.width * 0.04,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.05,
            ),
            Expanded(
              flex: 12,
              child: Text(
                'Astha Saxena',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Get.width * 0.048,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  // child: Image.asset(
                  //   AppIcons.filter_icon,
                  //   width: Get.width * 0.04,
                  // ),
                  ),
            )
          ],
        ),
      );

  Widget get chatView => Container(
        child: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: (messages[index].messageType == "receiver"
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage(
                                  AppImages.girl_profile,
                                ),
                                height: getMediaSize(30),
                                width: getMediaSize(30),
                              ),
                              SizedBox(
                                width: getMediaSize(10),
                              ),
                              Container(
                                constraints:
                                    BoxConstraints(maxWidth: getMediaSize(300)),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  color: Color(0xffffb5b6),
                                ),
                                padding: EdgeInsets.all(16),
                                child: SizedBox(
                                  child: Text(
                                    messages[index].messageContent,
                                    style: TextStyle(
                                      fontSize: getMediaSize(10),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Container(
                            constraints:
                                BoxConstraints(maxWidth: getMediaSize(300)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              color: Color(0xffffe49c),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Text(
                              messages[index].messageContent,
                              style: TextStyle(
                                fontSize: getMediaSize(10),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )),
                  ),
                );
              },
            ),
            // messageBox
          ],
        ),
      );

  Widget get messageBox => Container(
        // margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        // padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
        height: getMediaSize(40),
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: getMediaSize(15),
              ),
              Expanded(
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                width: getMediaSize(15),
              ),
              GestureDetector(
                  onTap: () {},
                  child: Image(
                    image: AssetImage(
                      AppIcons.file_icon,
                    ),
                    height: getMediaSize(25),
                  )),
              SizedBox(
                width: getMediaSize(15),
              ),
              GestureDetector(
                onTap: () {},
                child: Image(
                  image: AssetImage(AppIcons.send_icon),
                  height: getMediaSize(25),
                ),
              ),
              SizedBox(
                width: getMediaSize(15),
              ),
            ],
          ),
        ),
      );
}

List<ChatMessage> messages = [
  ChatMessage(
      messageContent:
          "Hello, Will Hello, Will Hello, Will Hello, Will Hello, Will, How have you beenHow have you been",
      messageType: "receiver"),
  ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  ChatMessage(
      messageContent: "Hey Kriss, I am doing fine dude. wbu?",
      messageType: "sender"),
  ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
  ChatMessage(
      messageContent:
          "Is there any thing wrong? How have you beenHow have you beenHow have you beenHow have you beenHow have you been",
      messageType: "sender"),
  ChatMessage(
      messageContent:
          "Hello, Will Hello, Will Hello, Will Hello, Will Hello, Will, How have you beenHow have you been",
      messageType: "receiver"),
  ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  ChatMessage(
      messageContent: "Hey Kriss, I am doing fine dude. wbu?",
      messageType: "sender"),
  ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
  ChatMessage(
      messageContent:
          "Is there any thing wrong? How have you beenHow have you beenHow have you beenHow have you beenHow have you been",
      messageType: "sender"),
];

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}
