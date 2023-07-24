import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';
import '../../../../utils/styles.dart';
import '../controllers/ask_doubt_controller.dart';

class AskDoubtView extends GetView<AskDoubtController> {
  // final controller = Get.put(AskDoubtController());
  const AskDoubtView({Key? key}) : super(key: key);
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
              children: [
                topView,
                element,
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
                'Ask Doubt',
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

  Widget get element => Container(
        padding: EdgeInsets.all(10),
        // color: Colors.red,
        // height: Get.width * getSize(670),

        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 3, right: 3, bottom: 3),
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Color(0xff473f97),
              ),
              child: Container(
                width: Get.width * getSize(333),
                // height: Get.width * getSize(345),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // color: index % 2 == 0 ? Color(0xffFFECED) : Color(0xffD1CFE5),
                  borderRadius: BorderRadius.circular(11),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                    ),
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1.0,
                      blurRadius: 1,
                      offset: Offset(1, -1),
                    ),
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                      offset: Offset(0, 3),
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            key: controller.askDountFormKey,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Class Teacher",
                                      style: TextStyle(
                                        fontSize: Get.width * getSize(12),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                TextFormField(
                                  maxLength: 256,
                                  keyboardType: TextInputType.text,
                                  controller: controller.classTeacherController,
                                  validator: (value) => controller
                                      .validateClassTeacherName(value!),
                                  style: askdoubtStyle,
                                  decoration: InputDecoration(
                                      counterText: '',
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      hintStyle: askdoubtStyle,

                                      // errorStyle: TextStyle(height: 5),
                                      hintText: ' Class Teacher Name'),
                                ),
                                SizedBox(height: Get.width * getSize(15)),
                                Row(
                                  children: [
                                    Text(
                                      "Application Title",
                                      style: TextStyle(
                                        fontSize: Get.width * getSize(12),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                TextFormField(
                                  maxLength: 256,
                                  keyboardType: TextInputType.text,
                                  controller: controller.titleController,
                                  validator: (value) =>
                                      controller.validateTitle(value!),
                                  style: askdoubtStyle,
                                  decoration: InputDecoration(
                                      counterText: '',
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      hintStyle: askdoubtStyle,

                                      // errorStyle: TextStyle(height: 5),
                                      hintText: 'Enter Title'),
                                ),
                                SizedBox(height: Get.width * getSize(15)),
                                Row(
                                  children: [
                                    Text(
                                      "Description",
                                      style: TextStyle(
                                        fontSize: Get.width * getSize(12),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  child: TextFormField(
                                    maxLines: 5,
                                    maxLength: 250,
                                    keyboardType: TextInputType.text,
                                    controller:
                                        controller.descriptionController,
                                    validator: (value) =>
                                        controller.validateDescription(value!),
                                    style: askdoubtStyle,
                                    decoration: InputDecoration(
                                        counterText: '',
                                        errorStyle: TextStyle(height: 3),
                                        // border: InputBorder.none,
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        hintStyle: askdoubtStyle,

                                        // errorStyle: TextStyle(height: 5),
                                        hintText: 'Enter Description'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Get.width * getSize(180),
            ),
            submitButton
          ],
        ),
      );
  Widget get submitButton {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          // controller.submit();

          if (controller.askDountFormKey.currentState!.validate()) {
            FocusScope.of(context).unfocus();
            Get.snackbar(
              "Doubt",
              "Submitted",
              snackPosition: SnackPosition.BOTTOM,
            );
            controller.submit();
          }
        },
        child: Column(
          children: [
            Container(
              width: Get.width * getSize(267),
              height: Get.width * getSize(43),
              decoration: ShapeDecoration(
                color: const Color(0xFF21C1F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 9,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'Send Request',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Get.height * 0.0266,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.width * 0.0733,
            ),
          ],
        ),
      );
    });
  }
}
