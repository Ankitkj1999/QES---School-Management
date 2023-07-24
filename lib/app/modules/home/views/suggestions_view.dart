import 'package:ces/app/modules/home/controllers/suggestions_controller.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';

class SuggestionsView extends GetView<SuggestionsController> {
  SuggestionsView({Key? key}) : super(key: key);
  // SuggestionsController controller = Get.put(SuggestionsController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              repeat: ImageRepeat.repeat,
              image: AssetImage(AppImages.beans_bg),
            ),
          ),
          child: Column(
            children: [topView, bodyView],
          ),
        ),
      )),
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
        child: Container(
          // margin: EdgeInsets.only(top: 10),
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
                  'Suggestions',
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
        ),
      );
  Widget get bodyView => Container(
        width: Get.width * 0.9,
        // height: Get.height,
        padding: EdgeInsets.all(10),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: controller.suggestionFormKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Title*',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF959595),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.width * 0.0133,
              ),
              Container(
                width: Get.width * 0.904,
                height: Get.width * 0.134,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: TextFormField(
                    maxLength: 256,
                    keyboardType: TextInputType.text,
                    controller: controller.titleController,
                    validator: (value) =>
                        controller.validateSuggestionTitle(value!),
                    decoration: InputDecoration(
                      counterText: "",
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      border: InputBorder.none,
                      hintText: 'Enter title',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.width * 0.0266,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Description*',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF959595),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.width * 0.0133,
              ),
              Container(
                width: getMediaSize(339),
                height: getMediaSize(333),
                padding: EdgeInsets.all(5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: TextFormField(
                        maxLines: 12,
                        maxLength: 2000,
                        keyboardType: TextInputType.text,
                        controller: controller.descriptionController,
                        validator: (value) =>
                            controller.validateSuggestionDescription(value!),
                        decoration: InputDecoration(
                          // counterText: "",
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          border: InputBorder.none,
                          hintText: 'Enter description',
                        ),
                      ),
                    ),
                    Text(
                      controller.descriptionController.text.length > 34
                          ? controller.descriptionController.text.substring(34)
                          : '',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.width * 0.2,
              ),
              submitButton
            ],
          ),
        ),
      );

  Widget get submitButton {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          // controller.submit();

          if (controller.suggestionFormKey.currentState!.validate()) {
            FocusScope.of(context).unfocus();
            Get.snackbar(
              "Suggestion",
              "Submitted",
              snackPosition: SnackPosition.BOTTOM,
            );
            controller.submit();
          }
        },
        child: Column(
          children: [
            Container(
              width: Get.width * getSize(335),
              height: Get.width * getSize(51),
              decoration: ShapeDecoration(
                color: const Color(0xFF21C1F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                shadows: const [
                  BoxShadow(
                    color: const Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Center(
                  child: Text(
                'Submit',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Get.width * getSize(20),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.30,
                ),
              )),
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
