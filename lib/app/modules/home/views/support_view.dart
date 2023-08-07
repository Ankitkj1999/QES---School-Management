import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';

class SupportView extends GetView<SuperController> {
  const SupportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage(AppImages.beans_bg),
              ),
            ),
            child: Column(
              children: [topView, bodyView],
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
        decoration: BoxDecoration(

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
                'Support',
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
              child: Container(),
            )
          ],
        ),
      );
  Widget get bodyView => Container(
        width: Get.width,
        // height: Get.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: Get.width * 0.1),
            Container(
              width: Get.width * 0.7,
              child: Image.asset(AppImages.support),
            ),
            Text(
              'Get Support',
              style: TextStyle(
                color: Color(0xFF313131),
                fontSize: Get.width * 0.064,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: Get.width * 0.04,
            ),
            SizedBox(
              width: 277,
              child: Text(
                'For any support request regards your orders or deliveries please feel free to speak with us at below.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFA5A5A5),
                  fontSize: Get.width * 0.042,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: Get.width * 0.3),
            Text(
              'Call us - +91 7838XXXXXX\nMail us - syalfreelance@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF313131),
                fontSize: Get.width * 0.042,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      );
}
