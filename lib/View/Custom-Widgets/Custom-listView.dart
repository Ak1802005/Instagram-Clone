import 'package:flutter/material.dart';

import '../../Constant/list-storage.dart';

class CustomListView extends StatelessWidget {
  const CustomListView(
      {super.key, required this.itemLength, required this.direction});

  final int itemLength;
  final Axis direction;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: direction,
      itemCount: itemLength,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10,15,10,7),
              child: CircleAvatar(
                radius: 35,
                  backgroundImage: AssetImage(ConstListStorage
                      .homeStoryScroller.value.values
                      .elementAt(index))),
            ),
            Text(ConstListStorage.homeStoryScroller.value.keys.elementAt(index),
                style: Theme.of(context).textTheme.bodyMedium)
          ],
        );
      },
    );
  }
}
