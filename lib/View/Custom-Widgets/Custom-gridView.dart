import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/Controller/normal_control.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final normalCtrl = Get.find<NormalControl>();
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: normalCtrl.addedPosts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
      itemBuilder: (context, index) {
        return Image.file(normalCtrl.addedPosts[index],fit: BoxFit.cover);
      },
    );
  }
}
