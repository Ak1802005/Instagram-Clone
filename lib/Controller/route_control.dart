// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/Constant/strings.dart';
import 'package:socialapp/Controller/auth_control.dart';
import 'package:socialapp/View/Screen-Parts/profile-setting.dart';
import 'package:socialapp/View/Screens/activity.dart';
import 'package:socialapp/View/Screens/chatbox.dart';
import 'package:socialapp/View/Screens/home.dart';
import 'package:socialapp/View/Screens/login.dart';
import 'package:socialapp/View/Screens/profile.dart';
import 'package:socialapp/View/Screens/reels.dart';
import 'package:socialapp/View/Screens/register.dart';
import 'package:socialapp/View/Screens/search.dart';
import 'package:socialapp/View/Screens/splash.dart';
import 'package:socialapp/View/Screens/uploadpost.dart';

class RouteController {
  static final authController = Get.find<AuthControl>();

  static Route? onGenerateRoute(RouteSettings settings) {
    Map map = {
      ConstString.register.value:
          MaterialPageRoute(builder: (context) => const Registeration()),
      ConstString.login.value:
          MaterialPageRoute(builder: (context) => const Log_In()),
      ConstString.home.value:
          MaterialPageRoute(builder: (context) => const HomePage()),
      ConstString.splash.value:
          MaterialPageRoute(builder: (context) => SplashScreen()),
      ConstString.activity.value:
          MaterialPageRoute(builder: (context) => ActivityScreen()),
      ConstString.chatbox.value:
          MaterialPageRoute(builder: (context) => ChatBoxScreen()),
      ConstString.search.value:
          MaterialPageRoute(builder: (context) => SearchScreen()),
      ConstString.profile.value:
          MaterialPageRoute(builder: (context) => ProfileScreen()),
      ConstString.uploadPost.value:
          MaterialPageRoute(builder: (context) => PostUploadScreen()),
      ConstString.reel.value:
          MaterialPageRoute(builder: (context) => ReelScreen()),
      ConstString.setting.value:
          MaterialPageRoute(builder: (context) => ProfileSetting())
    };
    return map[settings.name];
  }
}
