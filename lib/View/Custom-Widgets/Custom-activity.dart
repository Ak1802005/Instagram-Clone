import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';

class CustomActivity extends StatelessWidget {
  CustomActivity(this.subText,{super.key, required this.text,required this.icon,required this.btnText});

  final String text;
  String btnText;
  final String subText;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,size: 30),
      title: Text(text, style: Theme.of(context).textTheme.bodyLarge),
      subtitle: Text(subText,style: Theme.of(context).textTheme.bodySmall),
      trailing: GFButton(onPressed: () => print('Follow'),color: Colors.blue, child: Text(btnText,style: Theme.of(context).textTheme.titleMedium)),
    );
  }
}
