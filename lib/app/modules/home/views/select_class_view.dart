import 'package:ces/app/modules/home/controllers/select_class_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';

class SelectClassView extends GetView<SelectClassController> {
  const SelectClassView({Key? key}) : super(key: key);
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
      )),
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
                  'Select Class & Subject',
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
          key: controller.selectClassFormKey,
          child: Column(
            children: [
              SizedBox(
                height: Get.width * 0.1333,
              ),
              Container(
                width: Get.width * 0.904,
                height: Get.width * 0.134,
                padding: EdgeInsets.all(5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Obx(
                  () => Container(
                    width: double.infinity,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonFormField<String>(
                      isExpanded: true,
                      validator: (value) =>
                          value == null ? "Select your class!" : null,
                      icon: Image.asset(AppIcons.cirular_arrow),
                      onChanged: (newValue) {
                        controller.setSelectedClass(newValue!);
                      },
                      value: controller.selectedClass.value,
                      items: controller.classList.map((selectedType) {
                        return DropdownMenuItem(
                          value: selectedType,
                          child: Text(
                            selectedType,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xFF959595),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.30,
                            ),
                          ),
                        );
                      }).toList(),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.width * 0.1,
              ),
              Container(
                width: Get.width * 0.904,
                height: Get.width * 0.134,
                padding: EdgeInsets.all(5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Obx(
                  () => Container(
                    width: double.infinity,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: DropdownButtonFormField<String>(
                        isExpanded: true,
                        validator: (value) =>
                            value == null ? "Select subject" : null,
                        icon: Image.asset(AppIcons.cirular_arrow),
                        onChanged: (newValue) {
                          controller.setSelectedSubject(newValue!);
                        },
                        value: controller.selectedSubject.value,
                        items: controller.subjectList.map((selectedType) {
                          return DropdownMenuItem(
                            value: selectedType,
                            child: Text(
                              selectedType,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                color: Color(0xFF959595),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.30,
                              ),
                            ),
                          );
                        }).toList(),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.width * 0.9,
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
          controller.submit();

          if (controller.selectClassFormKey.currentState!.validate()) {
            FocusScope.of(context).unfocus();
            Get.snackbar(
              "Class Selected",
              "Successful",
              snackPosition: SnackPosition.BOTTOM,
            );
            controller.submit();
          }
        },
        child: Column(
          children: [
            Container(
              width: Get.width * 0.84,
              height: Get.height * 0.0554,
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
