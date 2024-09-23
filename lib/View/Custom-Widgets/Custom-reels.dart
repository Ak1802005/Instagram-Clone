import 'package:flutter/material.dart';

class CustomReels extends StatelessWidget {
   CustomReels({super.key,required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Center(child: Text(text,style: Theme.of(context).textTheme.displayMedium,)),
    );
  }
}
