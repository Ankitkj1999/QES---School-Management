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
            color: Color(0XFFFFD4d4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                topView,
                SizedBox(
                  height: getMediaSize(18),
                ),
                bottomView,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get topView => Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.05,
              ),
              SizedBox(
                width: Get.width * 0.296,
                child: Image.asset(AppIcons.loginCap),
              ),
              SizedBox(
                height: getMediaSize(25),
              ),
              Container(
                // color: Colors.grey,
                width: Get.width * 0.35,
                child: Text("Select type",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    )),
              ),
              SizedBox(
                height: getMediaSize(25),
              ),
              profileRow,
            ],
          ),
        ),
      );

  Widget get profileRow {
    var sizedBox1 = SizedBox(
      width: getMediaSize(13),
    );
    return Container(
      height: getMediaSize(100),
      width: Get.width,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              ProfileButton(
                iconName: AppIcons
                    .studentIcon, // Replace this with the actual asset path
                txt: 'Student',
              ),
            ],
          ),
          sizedBox1,
          ProfileButton(
            iconName:
                AppIcons.teacherIcon, // Replace this with the actual asset path
            txt: 'Teacher',
          ),
          sizedBox1,
          ProfileButton(
            iconName:
                AppIcons.parentsIcon, // Replace this with the actual asset path
            txt: 'Parents',
          ),
          sizedBox1,
          ProfileButton(
            iconName:
                AppIcons.schoolIcons, // Replace this with the actual asset path
            txt: 'School',
          ),
          sizedBox1,
        ],
      ),
    );
  }

  Widget get bottomView => Builder(builder: (context) {
        // login button
        var loginButton = Column(
          children: [
            GestureDetector(
              onTap: () {
                if (controller.loginFormKey.currentState!.validate()) {
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
                  color: Color(0xFFFD3667),
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
          ],
        );

        return Container(
          // height: Get.height * 0.7415,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: getMediaSize(380),
              width: Get.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: controller.loginFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        validator: (value) => controller.validateEmail(value!),
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
                      height: Get.height * 0.025,
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
                              Get.snackbar(
                                  "Forget Password", "Contact App Admin!",
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
                      height: Get.width * getSize(60),
                    ),

                    // Login Button
                    loginButton,
                  ],
                ),
              ),
            ),
          ]),
        );
      });
}

class ProfileButton extends StatelessWidget {
  final String iconName;
  final String txt;
  final VoidCallback? onPressed;

  const ProfileButton(
      {required this.iconName, required this.txt, Key? key, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: getMediaSize(74),
            width: getMediaSize(getMediaSize(74)),
            child: Image.asset(iconName), // Use iconName as the asset path
          ),
        ),
        SizedBox(
          height: getMediaSize(5),
        ),
        Text(
          txt, // Use txt as the label for the button
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ),
        )
      ],
    );
  }
}
