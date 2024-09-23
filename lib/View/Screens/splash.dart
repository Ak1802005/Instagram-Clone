import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:socialapp/Constant/strings.dart';
import 'package:socialapp/Controller/auth_control.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authCtrl = Get.put(AuthControl());
    // authCtrl.currentUser().then(
    //   (usercredential) {
    //     if (usercredential == null) {
    //       Navigator.pushReplacementNamed(context, ConstString.register.value);
    //     } else {
    //       Navigator.pushReplacementNamed(context, ConstString.home.value);
    //     }
    //   },
    // );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(ConstString.splashLottie.value),
      ),
    );
  }
}
