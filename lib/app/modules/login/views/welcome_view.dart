import 'package:ces/app/modules/login/controllers/welcome_controller.dart';
import 'package:ces/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../utils/app_images.dart';

class WelcomeView extends GetView<WelcomeController> {
  WelcomeView({Key? key}) : super(key: key);
  // WelcomeController _welcomeController = Get.put(WelcomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: const Color(0XFF302FA7),
            child: Column(
              children: <Widget>[
                _buildHeader(),
                _buildContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: Get.height * 0.4,
            child: Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Positioned(
                  bottom: 10,
                  left: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Get.width * getSize(30),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Opacity(
                            opacity: 0.61,
                            child: Text(
                              'Please Enter School code...!!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * getSize(20),
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: Get.height * 0.4,
                      child: Image.asset(AppImages.welcome_image),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Builder(builder: (context) {
      return Container(
        height: Get.height * 0.55,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Column(
              children: [
                Container(
                  height: Get.height * 0.55,
                  width: Get.width,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AppImages.screen_union),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: Get.width * 0.3),
                      Container(
                        width: Get.width * 0.84,
                        height: Get.width * getSize(25),
                        child: Text(
                          'Enter Institution Code',
                          style: TextStyle(
                            color: Color(0xFFA5A5A5),
                            fontSize: Get.width * getSize(12),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        width: Get.width * 0.84,
                        height: Get.width * 0.13,
                        padding: EdgeInsets.only(bottom: 8),
                        child: Form(
                          key: controller.formKey,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.codeController,
                            // controller: TextEditingController(),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(
                                  6), // Limit input to 6 digits
                            ],
                            decoration: InputDecoration(
                              hintText: 'Format - 12345',
                              helperStyle: TextStyle(
                                color: Color(0xFF949494),
                                fontSize: Get.width * getSize(15),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.30,
                              ),
                            ),
                            validator: (value) =>
                                controller.validateInstitutionCode(value),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ),
                      SizedBox(height: Get.width * 0.15),
                      GestureDetector(
                        onTap: () {
                          if (controller.formKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                            // Get.snackbar(
                            //   "Data",
                            //   "Is Processing",
                            //   icon:
                            //       const Icon(Icons.person, color: Colors.white),
                            //   snackPosition: SnackPosition.BOTTOM,
                            // );
                            controller.submit();
                          }
                        },
                        child: Container(
                          width: Get.width * 0.84,
                          height: Get.width * getSize(51),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF21C1F3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            shadows: [
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
                      ),
                      SizedBox(height: Get.width * 0.3),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
