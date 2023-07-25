import 'package:ces/utils/app_images.dart';
import 'package:ces/utils/strings.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            color: AppColors.primaryLightBlue,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                topView,
                SizedBox(
                  height: Get.height * 0.01,
                ),
                bottomView,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get topView => Center(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.05,
            ),
            Container(
              width: Get.width * 0.296,
              child: Image.asset(AppImages.login_logo),
            ),
            SizedBox(
              height: Get.height * 0.005,
            ),
            Container(
              // color: Colors.grey,
              width: Get.width * 0.35,
              child: const Text(
                AppStrings.institute_name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.73,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      );
  Widget get bottomView => Builder(builder: (context) {
        return Expanded(
            child: Container(
          // height: Get.height * 0.7415,
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // White Space  For Image

                    Container(
                      height: 132,
                      // color: Colors.red,
                    ),
                    // SizedBox(height: 120),
                    Container(
                      // height: Get.height * 0.6,
                      // width: Get.width,
                      height: Get.height * 0.58,
                      width: Get.width,
                      decoration: const BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AppImages.screen_union),
                        ),
                      ),

                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: controller.loginFormKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // Email Input
                            Container(
                              width: Get.width * 0.908,
                              height: Get.height * 0.064,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                maxLength: 256,
                                controller: controller.emailController,
                                style: greyInput,
                                validator: (value) =>
                                    controller.validateEmail(value!),
                                decoration: const InputDecoration(
                                    counterText: "",
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    border: InputBorder.none,
                                    hintText: "User Name",
                                    hintStyle: greyInput),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.027,
                            ),
                            // Password Input
                            Container(
                              width: Get.width * 0.908,
                              height: Get.height * 0.064,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                maxLength: 256,
                                controller: controller.passwordController,
                                style: greyInput,
                                validator: (value) =>
                                    controller.validatePassword(value!),
                                decoration: const InputDecoration(
                                    counterText: "",
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: greyInput),
                              ),
                            ),
                            SizedBox(
                              height: Get.width * 0.02,
                            ),

                            // Forgot Password
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      // TODO: Implement forgot password logic
                                      Get.snackbar("Forget Password",
                                          "Contact App Admin!",
                                          snackPosition: SnackPosition.BOTTOM);
                                    },
                                    child: Text(
                                      'ForgotPassword?',
                                      style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: Get.height * 0.01477,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )),
                                SizedBox(
                                  width: Get.width * 0.069,
                                )
                              ],
                            ),
                            SizedBox(
                              height: Get.width * getSize(63),
                            ),

                            // Login Button
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (controller.loginFormKey.currentState!
                                        .validate()) {
                                      FocusScope.of(context).unfocus();
                                      Get.snackbar('Login', 'Successful',
                                          snackPosition: SnackPosition.BOTTOM);
                                      controller.login();
                                    }
                                  },
                                  child: Container(
                                    width: Get.width * 0.584,
                                    height: Get.height * 0.0554,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF21C1F3),
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
                                    child: Center(
                                        child: Text(
                                      'Login',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Get.height * 0.0266,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: -0.30,
                                      ),
                                    )),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.width * 0.02,
                                ),

                                // Signup text button
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Don’t Have An Account? ',
                                        style: TextStyle(
                                          color: Color(0xFF757575),
                                          fontSize: Get.height * 0.01477,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Sign Up',
                                        style: TextStyle(
                                          color: Color(0xFFFD3667),
                                          fontSize: Get.height * 0.01477,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: Get.width * 0.05,
                                ),

                                // social signups
                                Text(
                                  'OR SIGN IN WITH',
                                  style: TextStyle(
                                    color: Color(0xFF2D4379),
                                    fontSize: Get.height * 0.01477,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.75,
                                  ),
                                ),
                                SizedBox(
                                  height: Get.width * 0.05,
                                ),
                                // social icons
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppIcons.facebookIcon,
                                      height: Get.height * 0.0554,
                                    ),
                                    SizedBox(width: 10),
                                    Image.asset(
                                      AppIcons.googleIcon,
                                      height: Get.height * 0.0554,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: Get.width * 0.05,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
              Positioned(
                child: Image.asset(AppImages.login_2),
                height: Get.height * 0.305,
                top: -10,
              ),
            ],
          ),
        ));
      });
}
