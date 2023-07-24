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
              'Register As Student',
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                Container(
                  // color: Colors.green,
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: controller.signupFormKey,
                    child: Column(
                      children: [
                        // Name
                        CustomFormField(
                          labelText: 'Full Name',
                          keyboardType: TextInputType.text,
                          maximumLength: 256,
                          controllerName: controller.nameController,
                          hintText: 'Enter your full name',
                          validatorName: (value) =>
                              controller.validateName(value!),
                        ),
                        // Email
                        CustomFormField(
                          labelText: 'Email Address',
                          keyboardType: TextInputType.emailAddress,
                          maximumLength: 256,
                          hintText: 'Enter your email',
                          controllerName: controller.emailController,
                          validatorName: (value) =>
                              controller.validateEmail(value!),
                        ),
                        // Mobile
                        CustomFormField(
                          labelText: 'Mobile Number',
                          keyboardType: TextInputType.phone,
                          maximumLength: 10,
                          hintText: 'Enter your mobile',
                          controllerName: controller.mobileController,
                          validatorName: (value) =>
                              controller.validateMobileNumber(value!),
                        ),
                        // Address
                        CustomFormField(
                          labelText: 'Address',
                          keyboardType: TextInputType.streetAddress,
                          maximumLength: 1000,
                          hintText: 'Enter your address',
                          controllerName: controller.addressController,
                          validatorName: (value) =>
                              controller.validateHomeAddress(value!),
                        ),
                        // City
                        CustomFormField(
                          labelText: 'City',
                          maximumLength: 28, // Venkatanarasimharajuvaripeta
                          keyboardType: TextInputType.streetAddress,
                          hintText: 'Enter city name',
                          controllerName: controller.cityController,
                          validatorName: (value) =>
                              controller.validateCityName(value!),
                        ),
                        // State
                        CustomFormField(
                          labelText: 'State',
                          maximumLength: 14, // Andhra pradesh
                          keyboardType: TextInputType.text,
                          hintText: 'Enter state name',
                          controllerName: controller.stateCcontroller,
                          validatorName: (value) =>
                              controller.validateStateName(value!),
                        ),
                        // Password
                        CustomFormField(
                          labelText: 'Password',
                          isPassword: true,
                          maximumLength: 256,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter password',
                          controllerName: controller.passwordController,
                          validatorName: (value) =>
                              controller.validatePassword(value!),
                        ),
                        // Confirm Password
                        CustomFormField(
                          labelText: 'Confirm Password',
                          isPassword: true,
                          maximumLength: 256,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter your password',
                          controllerName: controller.confirmPasswordController,
                          validatorName: (value) =>
                              controller.validateConfirmPassword(value!,
                                  controller.passwordController.value.text),
                        ),
                        // School name
                        CustomFormField(
                          labelText: 'School Name',
                          maximumLength: 256,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter school name',
                          controllerName: controller.schoolController,
                          validatorName: (value) =>
                              controller.validateSchoolName(value!),
                        ),
                        // select class
                        CustomFormField(
                          labelText: 'Select Class',
                          maximumLength: 2,
                          keyboardType: TextInputType.number,
                          hintText: 'Enter your address',
                          controllerName: controller.classController,
                          validatorName: (value) =>
                              controller.validateClassName(value!),
                        ),
                        // select batch
                        CustomFormField(
                          labelText: 'Select Batch',
                          maximumLength: 9,
                          keyboardType: TextInputType.number,
                          hintText: 'Batch format YYYY-YYYY',
                          controllerName: controller.batchController,
                          validatorName: (value) =>
                              controller.validateSchoolBatch(value!),
                        ),
                        //roll no
                        CustomFormField(
                          labelText: 'Roll No.',
                          maximumLength: 5,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter your Roll No.',
                          controllerName: controller.rollNOController,
                          validatorName: (value) =>
                              controller.validateRollNumber(value!),
                        ),
                        // date of birth
                        CustomFormField(
                          labelText: 'Date Of Birth',
                          maximumLength: 10,
                          keyboardType: TextInputType.text,
                          hintText: 'Format DD/MM/YYYY',
                          controllerName: controller.dobController,
                          validatorName: (value) =>
                              controller.validateDateOfBirth(value!),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
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
