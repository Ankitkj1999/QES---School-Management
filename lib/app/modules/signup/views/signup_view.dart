import 'package:ces/app/modules/signup/views/forms.dart';
import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            topView,
            bottomView,
          ],
        )),
      ),
    );
  }

  // Signup top view
  Widget get topView => Container(
        width: Get.width,
        height: Get.width * 0.3,
        decoration: BoxDecoration(

            // color: Color(0XFF473F97),
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppImages.purpel_signup),
        )),
        child: Center(
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: Get.width * 0.0533,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
              letterSpacing: -0.30,
            ),
          ),
        ),
      );

  // Middle  view
  Widget get bottomView {
    return Container(
      // color: Colors.red,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.width * 0.01333,
          ),
          SizedBox(
            child: Text(
              controller.loginController.selectedStudent.value
                  ? 'Register As Student'
                  : controller.loginController.selectedParent.value
                      ? 'Register As Parent'
                      : controller.loginController.selectedTeacher.value
                          ? 'Register As Teacher'
                          : controller.loginController.selectedSchool.value
                              ? 'Register As School'
                              : 'Register',
              style: TextStyle(
                color: Color(0xFF473F97),
                fontSize: Get.width * 0.042,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.30,
              ),
            ),
          ),
          // Starting form from here
          SizedBox(
            height: Get.width * 0.01333,
          ),
          // Form Input Fields
          // studentForm,
          SignupForm().studentForm,
          SizedBox(
            height: Get.width * 0.0733,
          ),
          signUpButton,
        ],
      ),
    );
  }

  Widget get signUpButton {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          // controller.submit();

          if (controller.signupFormKey.currentState!.validate()) {
            FocusScope.of(context).unfocus();
            Get.snackbar(
              "Signup",
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

class CustomFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isPassword;
  final int maximumLength;
  final TextEditingController controllerName;
  final TextInputType keyboardType;
  final String? Function(String?) validatorName;

  CustomFormField({
    required this.labelText,
    this.isPassword = false,
    required this.maximumLength,
    required this.hintText,
    required this.keyboardType,
    required this.controllerName,
    required this.validatorName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.width * 0.0667,
          ),
          SizedBox(
            width: Get.width * 0.3666,
            // height: Get.width*0.056,
            child: Text(
              labelText,
              style: TextStyle(
                color: Colors.black,
                fontSize: Get.width * 0.04,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: Get.width * 0.01333,
          ),
          Container(
            width: Get.width * 0.88,
            // height: Get.width*0.146,
            child: Container(
              width: 330,
              height: 55,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFBDBDBD)),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              child: TextFormField(
                obscureText: isPassword,
                maxLength: maximumLength,
                keyboardType: keyboardType,
                controller: controllerName,
                style: purpleInput,
                validator: validatorName,
                decoration: InputDecoration(
                    counterText: "",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: purpleInput),
              ),
            ),
          )
        ],
      ),
    );
  }
}
