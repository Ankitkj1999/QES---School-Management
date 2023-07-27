import 'package:ces/app/modules/signup/views/signup_view.dart';
import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupForm {
  final SignupController controller = SignupController();

  Widget get studentForm => Container(
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
                      validatorName: (value) => controller.validateName(value!),
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
                          controller.validateConfirmPassword(
                              value!, controller.passwordController.value.text),
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
      );

  Widget get teacherForm => Container(
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
                      validatorName: (value) => controller.validateName(value!),
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
                          controller.validateConfirmPassword(
                              value!, controller.passwordController.value.text),
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
      );
}
