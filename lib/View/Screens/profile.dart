import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/badge/gf_button_badge.dart';
import 'package:getwidget/getwidget.dart';
import 'package:socialapp/Constant/strings.dart';
import 'package:socialapp/Controller/normal_control.dart';
import 'package:socialapp/main.dart';

import '../../Constant/list-storage.dart';
import '../Custom-Widgets/Custom-listView.dart';
import '../Custom-Widgets/Custom-navBar.dart';
import '../Custom-Widgets/Custom-profilesection.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final normalCtrl = Get.put(NormalControl());
    final heigth = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('@kunj1810',
                style: Theme.of(context).textTheme.titleLarge)),
        actions: [
          IconButton(
              onPressed: () => print('Thread'),
              icon: const Icon(CupertinoIcons.at, size: 28)),
          3.horizontal(),
          IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ConstString.uploadPost.value),
              icon: const Icon(CupertinoIcons.plus_app, size: 28)),
          3.horizontal(),
          IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ConstString.setting.value),
              icon: const Icon(CupertinoIcons.line_horizontal_3, size: 28)),
          8.horizontal()
        ],
      ),
      body: SingleChildScrollView(
        primary: false,
        child: Column(
          children: [
            SizedBox(height: heigth * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(children: [
                  Obx(
                    () => Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2.4),
                            borderRadius: BorderRadiusDirectional.circular(50)),
                        child: CircleAvatar(
                          radius: 48,
                          backgroundImage: normalCtrl.selectImage.value != null
                              ? Image.file(normalCtrl.selectImage.value!).image
                              : null,
                        )),
                  ),
                  Positioned(
                      right: 6,
                      bottom: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2.4),
                            borderRadius: BorderRadiusDirectional.circular(25)),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 14,
                          child: IconButton(
                              onPressed: () => normalCtrl.profileView(),
                              icon: const Icon(CupertinoIcons.plus,
                                  size: 14, color: Colors.white)),
                        ),
                      )),
                ]),
                SizedBox(width: width * 0.002),
                Column(
                  children: [
                    Text('0',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontSize: 20)),
                    Text('Posts',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontSize: 18)),
                  ],
                ),
                Column(
                  children: [
                    Text('1M',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontSize: 20)),
                    Text('Followers',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontSize: 18)),
                  ],
                ),
                Column(
                  children: [
                    Text('18',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontSize: 20)),
                    Text('Following',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontSize: 18)),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                      'ᶦᶰᵈ᭄🅡🅐🅙🅐࿐ᴮᵒˢˢ\nKunj Bhai 😎\nFlutter Developer 💙\nThis app is clone of Instagram. 📋',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontSize: 18))),
            ),
            20.vertical(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 145,
                  height: 40,
                  child: GFButtonBadge(
                    onPressed: () => print('Click'),
                    size: 30,
                    color: Colors.white,
                    shape: GFButtonShape.square,
                    text: 'Edit Profile',
                    textStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                    textColor: Colors.black,
                    borderShape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 2.4,
                            color: Colors.black,
                            style: BorderStyle.solid)),
                    elevation: 6,
                  ),
                ),
                SizedBox(
                  width: 145,
                  height: 40,
                  child: GFButtonBadge(
                    onPressed: () => print('Click'),
                    size: 30,
                    color: Colors.white,
                    shape: GFButtonShape.square,
                    text: 'Share Profile',
                    textStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                    textColor: Colors.black,
                    borderShape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 2.4,
                            color: Colors.black,
                            style: BorderStyle.solid)),
                    elevation: 6,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 55,
                  child: GFIconButton(
                      type: GFButtonType.solid,
                      icon: const Icon(
                        CupertinoIcons.person_badge_plus_fill,
                        size: 20,
                        color: Colors.black,
                      ),
                      onPressed: () => print('Clicked'),
                      color: Colors.white,
                      borderShape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 2.4,
                              color: Colors.black,
                              style: BorderStyle.solid))),
                )
              ],
            ),
            10.vertical(),
            Container(
              height: 125,
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
              decoration: const BoxDecoration(color: Colors.white24),
              child: CustomListView(
                  itemLength: ConstListStorage.homeStoryScroller.value.length,
                  direction: Axis.horizontal),
            ),
             const Padding(
               padding: EdgeInsets.all(10.0),
               child: CustomProfileSection(),
             )
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(10.0),
        child: CustomNavBar(),
      ),
    );
  }
}
