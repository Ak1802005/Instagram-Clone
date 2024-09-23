import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/Constant/list-storage.dart';
import 'package:socialapp/View/Custom-Widgets/Custom-activity.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification',style: Theme.of(context).textTheme.headlineSmall)),
      body: ListView.builder(
        itemCount: ConstListStorage.activity.value.length,
        itemBuilder: (context, index) {
          return CustomActivity(
              ConstListStorage.activity.value.values.elementAt(index),
              text: ConstListStorage.activity.value.keys.elementAt(index),
              icon: CupertinoIcons.person_2_square_stack,btnText: 'Follow',);
        },
      ),
    );
  }
}
