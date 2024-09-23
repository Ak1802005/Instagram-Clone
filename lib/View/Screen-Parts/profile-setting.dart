import 'package:flutter/material.dart';
import 'package:socialapp/Constant/list-storage.dart';
import 'package:socialapp/main.dart';

import '../Custom-Widgets/Custom-Setting.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          title: Text('Setting and Activity',
              style: Theme.of(context).textTheme.titleLarge)),
      body: SingleChildScrollView(
        primary: false,
        child: Column(
          children: [
            10.vertical(),
            SizedBox(
                height: heigth * 0.85,
                child: CustomSetting(
                    direction: Axis.vertical,
                    itemLength: ConstListStorage.profileSetting.value.length))
          ],
        ),
      ),
    );
  }
}
