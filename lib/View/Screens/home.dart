import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/Constant/list-storage.dart';
import 'package:socialapp/Constant/strings.dart';
import 'package:socialapp/View/Custom-Widgets/Custom-listView.dart';
import 'package:socialapp/View/Custom-Widgets/Custom-navBar.dart';

import '../../Controller/normal_control.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final normalCtrl = Get.put(NormalControl());
    final tHeight = MediaQuery.of(context).size.height;
    final tWidth = MediaQuery.of(context).size.width;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    const appBarHeight = kToolbarHeight;
    final navBarHeight = MediaQuery.of(context).padding.bottom;
    final bodyHeight = tHeight - statusBarHeight - appBarHeight - navBarHeight;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(ConstString.appLogo.value),
        ),
        title: Text(ConstString.homeTitle.value,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: const Color(0xFF921A40))),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, ConstString.activity.value),
                  icon: const Icon(CupertinoIcons.heart, size: 32)),
              const SizedBox(width: 2),
              IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, ConstString.chatbox.value),
                  icon: const Icon(CupertinoIcons.chat_bubble, size: 29)),
              SizedBox(
                width: tWidth * 0.04,
              )
            ],
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: bodyHeight * 0.017),
          Container(
            height: bodyHeight * 0.2,
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
            decoration: const BoxDecoration(color: Colors.white24),
            child: CustomListView(
                itemLength: ConstListStorage.homeStoryScroller.value.length,
                direction: Axis.horizontal),
          ),
        ],
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(10.0),
        child: CustomNavBar(),
      ),
    );
  }
}
