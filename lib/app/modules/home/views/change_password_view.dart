import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';
import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView {
  ChangePasswordView({Key? key}) : super(key: key);
  ChangePasswordController controller = Get.put(ChangePasswordController());
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
                formView,
              ],
            ),
          ),
        ),
      ),
    );
  }

  //  top view
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
                    width: Get.width * 0.06,
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
                'Change Password',
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
  Widget get formView => Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: Get.width * 0.84,
        // color: Colors.red,
        child: Form(
          key: controller.changePasswordFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomPasswordField(
                labelText: 'Old Password',
                controller: controller.oldPasswordController,
                validator: (value) => controller.validatePassword(value!),
              ),
              CustomPasswordField(
                labelText: 'New Password',
                controller: controller.newPasswordController,
                validator: (value) => controller.validatePassword(value!),
              ),
              CustomPasswordField(
                labelText: 'Retype Password',
                controller: controller.retypePasswordController,
                validator: (value) => controller.validateConfirmPassword(
                    value!, controller.newPasswordController.value.text),
              ),
              SizedBox(height: Get.width * getSize(170)),
              updatePassButton
            ],
          ),
        ),
      );

  Widget get updatePassButton {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          // controller.submit();

          if (controller.changePasswordFormKey.currentState!.validate()) {
            FocusScope.of(context).unfocus();
            Get.snackbar(
              "Password",
              "Changed Successfully",
              snackPosition: SnackPosition.BOTTOM,
            );
          }
          controller.submit();
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: Get.width * getSize(267),
                height: Get.width * getSize(43),
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
                    'Update Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Get.width * getSize(20),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.width * getSize(20),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class CustomPasswordField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?) validator;

  const CustomPasswordField({
    required this.labelText,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: Color(0xFF424242),
            fontSize: Get.width * 0.032,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: Get.width * getSize(15)),
        TextFormField(
          controller: controller,
          validator: validator,
          obscureText: true,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey, // Customize bottom border color
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color:
                    Colors.grey, // Customize bottom border color when focused
              ),
            ),
            counterText: "",
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            border: InputBorder.none,
            hintText: "***********",
            hintStyle: TextStyle(
              color: Color(0xFFA5A5A5),
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: Get.width * 0.1,
        )
      ],
    );
  }
}
