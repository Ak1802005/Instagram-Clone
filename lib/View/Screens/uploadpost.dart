import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:socialapp/Constant/strings.dart';
import 'package:socialapp/Controller/normal_control.dart';
import 'package:socialapp/main.dart';

import '../../Constant/list-storage.dart';

class PostUploadScreen extends StatelessWidget {
  const PostUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final normalCtrl = Get.put(NormalControl());
    return Scaffold(
      body: SingleChildScrollView(
          primary: false,
          child: Column(
            children: [
              30.vertical(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GFButton(
                    padding:
                        const EdgeInsetsDirectional.symmetric(horizontal: 30),
                    highlightColor: Colors.blue,
                    size: GFSize.LARGE,
                    type: GFButtonType.solid,
                    color: Colors.transparent,
                    onPressed: () =>
                        Navigator.pushNamed(context, ConstString.profile.value),
                    child: Text('Cancel',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                  GFButton(
                    padding:
                        const EdgeInsetsDirectional.symmetric(horizontal: 30),
                    highlightColor: Colors.black54,
                    size: GFSize.LARGE,
                    type: GFButtonType.solid,
                    color: Colors.transparent,
                    onPressed: () {
                      normalCtrl.addPost();
                      Navigator.pushNamed(context, ConstString.home.value);
                      Get.snackbar('Congratulations !',
                          'Your Post will added soon.\nYou will be give Edit Anytime.',
                          backgroundColor: Colors.grey,
                          forwardAnimationCurve:
                              const FlippedCurve(Curves.easeInCirc),
                          snackPosition: SnackPosition.BOTTOM,
                          colorText: Colors.black,
                          snackStyle: SnackStyle.FLOATING,
                          margin: const EdgeInsets.all(20));
                    },
                    child: Text('Add Post',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                ],
              ),
              85.vertical(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 260,
                  width: double.infinity,
                  child: Obx(
                    () => GFAvatar(
                        backgroundColor: Colors.grey,
                        shape: GFAvatarShape.square,
                        backgroundImage: normalCtrl.selectPost.value != null
                            ? Image.file(normalCtrl.selectPost.value!).image
                            : null),
                  ),
                ),
              ),
              100.vertical(),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(35),
                      child: GestureDetector(
                        onTap: () => normalCtrl.postView(index),
                        child: Text(
                            ConstListStorage.uploadPost.value.values
                                .elementAt(index),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
