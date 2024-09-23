import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:socialapp/Constant/strings.dart';

import '../../Controller/normal_control.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final normalCtrl = Get.put(NormalControl());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () => Navigator.pushNamed(context,ConstString.home.value),
            icon: const Icon(CupertinoIcons.home,size: 28)),
        IconButton(
            onPressed: () => Navigator.pushNamed(context,ConstString.search.value),
            icon: const Icon(CupertinoIcons.search,size: 28)),
        IconButton(
            onPressed: () async {
              Navigator.pushNamed(context,ConstString.uploadPost.value);
            },
            icon: const Icon(CupertinoIcons.plus_app,size: 28)),
        IconButton(
            onPressed: () => Navigator.pushNamed(context,ConstString.reel.value),
            icon: const Icon(CupertinoIcons.play_circle_fill,size: 28)),
        IconButton(
            onPressed: () => Navigator.pushNamed(context,ConstString.profile.value),
            icon: const Icon(CupertinoIcons.profile_circled,size: 28)),
      ],
    );
  }
}
