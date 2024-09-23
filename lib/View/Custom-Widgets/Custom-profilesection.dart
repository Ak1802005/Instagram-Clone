import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/View/Custom-Widgets/Custom-gridView.dart';
import 'package:socialapp/main.dart';

class CustomProfileSection extends StatefulWidget {
   const CustomProfileSection({super.key});


  @override
  State<CustomProfileSection> createState() => _CustomProfileSectionState();
}

class _CustomProfileSectionState extends State<CustomProfileSection> {
  bool _showPost = false;
  bool _showReel = false;
  bool _showTag = false;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _showPost = !_showPost;
                    _showReel = false;
                    _showTag = false;
                  });
                },
                icon:
                    const Icon(CupertinoIcons.circle_grid_3x3_fill, size: 30)),
            IconButton(
                onPressed: () {
                  setState(() {
                    _showPost = false;
                    _showReel = !_showReel;
                    _showTag = false;
                  });
                },
                icon: const Icon(CupertinoIcons.play_circle_fill, size: 30)),
            IconButton(
                onPressed: () {
                  setState(() {
                    _showPost = false;
                    _showReel = false;
                    _showTag = !_showTag;
                  });
                },
                icon: const Icon(
                    CupertinoIcons.rectangle_stack_person_crop_fill,
                    size: 30)),
          ],
        ),
        30.vertical(),
        Visibility(
            visible: _showPost,
            child: const SizedBox(
                height: 500,
                width: double.infinity,
                child: CustomGridView())),
        Visibility(
            visible: _showReel,
            child: const Center(
                child: Text('Reels', style: TextStyle(fontSize: 30)))),
        Visibility(
            visible: _showTag,
            child: const Center(
                child: Text('Tags', style: TextStyle(fontSize: 30)))),
      ],
    );
  }
}
