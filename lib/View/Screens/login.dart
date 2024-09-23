// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginpack/Log-in.dart';
import 'package:socialapp/Constant/strings.dart';
import 'package:socialapp/Controller/auth_control.dart';

class Log_In extends StatelessWidget {
  const Log_In({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthControl>();
    return LogInScreen(
      BackgroundImage: ConstString.logInBackground.value,
      textNavigation: ConstString.register.value,
      LogoImage: ConstString.loginImage.value,
      username: authController.username,
      pswd: authController.pswd,
      onPressed: () => authController.loginUser(context),
    );
  }
}
