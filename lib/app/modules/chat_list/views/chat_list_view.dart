import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';
import '../controllers/chat_list_controller.dart';

class ChatListView extends GetView<ChatListController> {
  const ChatListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // height: Get.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage(AppImages.beans_bg),
              ),
            ),
            child: Column(
              children: [
                topView,
                chatElements,
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
                'Chat List',
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
                child: Image.asset(
                  AppIcons.filter_icon,
                  width: Get.width * 0.04,
                ),
              ),
            )
          ],
        ),
      );

  Widget get chatElements => Container(
        padding: EdgeInsets.all(10),
        // color: Colors.red,
        // height: Get.height * 0.8,

        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed('/chat');
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                width: Get.width * 0.8,
                height: Get.width * 0.296,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(color: Colors.grey, width: 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffc0c0c0),
                    ),
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1.0,
                        blurRadius: 2,
                        offset: Offset(0, 2)),
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: Get.width * 0.2,
                        height: Get.width * 0.2,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(AppImages.girl_profile),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            width: 4,
                            color: Color(0xFFFFB5B6),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Aastha',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getMediaSize(20),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.30,
                                ),
                              ),
                              Text(
                                'Class 6th B',
                                style: TextStyle(
                                  color: Color(0xFF808080),
                                  fontSize: getMediaSize(13),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.30,
                                ),
                              ),
                              SizedBox(height: getMediaSize(5)),
                              SizedBox(
                                width: getMediaSize(139),
                                height: getMediaSize(17),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, ',
                                  style: TextStyle(
                                    color: Color(0xFF646464),
                                    fontSize: getMediaSize(10),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '05-11-2021',
                                    style: TextStyle(
                                      color: Color(0xFF473F97),
                                      fontSize: getMediaSize(10),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.30,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            );
          },
        ),
      );
}
