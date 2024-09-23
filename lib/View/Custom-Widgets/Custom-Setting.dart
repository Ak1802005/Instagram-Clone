// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Constant/list-storage.dart';

class CustomSetting extends StatelessWidget {
  const CustomSetting(
      {super.key, required this.direction, required this.itemLength});

  final int itemLength;
  final Axis direction;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: direction,
      itemCount: itemLength,
      separatorBuilder: (context, index) {
        if(index % 3 == 2){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(thickness: 3, color: Colors.grey),
          );
        }else{
          return Divider(color: Colors.transparent);
        }
      },
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(13.5, 15, 25, 7),
                child: ConstListStorage.profileSetting.value.values
                    .elementAt(index),
              ),
              Text(ConstListStorage.profileSetting.value.keys.elementAt(index),
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 18))
            ],
          ),
        );
      },
    );
  }
}
