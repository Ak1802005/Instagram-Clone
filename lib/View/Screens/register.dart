import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginpack/loginpack.dart';
import 'package:socialapp/Constant/strings.dart';
import 'package:socialapp/Controller/auth_control.dart';
import 'package:socialapp/Model/Credential/userCredential.dart';

class Registeration extends StatelessWidget {
  const Registeration({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.put(AuthControl());
    return SignUpScreen(
      BackgroundImage: ConstString.registerBackground.value,
      textNavigation: ConstString.login.value,
      LogoImage: ConstString.registerImage.value,
      firstCtrl: authController.firstname,
      lastCtrl: authController.lastname,
      numberCtrl: authController.number,
      username: authController.username,
      pswd: authController.pswd,
      onPressed: () {
        authController.registerUser(
            context,
            Usercredential(
                firstName: authController.firstname.text.trim(),
                lastName: authController.lastname.text.trim(),
                gender: 'Male',
                number: authController.number.text.trim(),
                userName: authController.username.text.trim(),
                pswd: authController.pswd.text.trim()));
      },
    );
  }
}
