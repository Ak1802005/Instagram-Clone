import 'package:flutter/material.dart';
import 'package:socialapp/Constant/list-storage.dart';
import 'package:socialapp/View/Custom-Widgets/Custom-listView.dart';
import 'package:socialapp/main.dart';

class ChatBoxScreen extends StatelessWidget {
  const ChatBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('@kunj1810',
                style: Theme.of(context).textTheme.titleLarge)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
                onPressed: () => print('Edit Conversation'),
                icon: const Icon(Icons.edit_note_rounded, size: 38)),
          )
        ],
      ),
      body: SingleChildScrollView(
        primary: false,
        child: Column(
          children: [
            10.vertical(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SearchBar(
                leading: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.search_rounded),
                ),
                hintText: "Hello! What's Problem",
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
              ),
            ),
            15.vertical(),
            Container(
              height: 125,
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
              decoration: const BoxDecoration(color: Colors.white24),
              child: CustomListView(
                  itemLength: ConstListStorage.homeStoryScroller.value.length,
                  direction: Axis.horizontal),
            ),
          ],
        ),
      ),
    );
  }
}
