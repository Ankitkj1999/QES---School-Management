import 'package:ces/app/modules/signup/controllers/signup_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SignupAdminView extends GetView<SignupController> {
  const SignupAdminView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignupAdminView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SignupAdminView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
