import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/Constant/strings.dart';
import 'package:socialapp/Controller/route_control.dart';

void main(){
    runApp( const MaterialApp(home: CloneApp()));
}

extension gap on num{
  vertical() => SizedBox(height: toDouble());
  horizontal() => SizedBox(width: toDouble());
}

class CloneApp extends StatelessWidget {

  const CloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteController.onGenerateRoute,
      initialRoute: ConstString.home.value,
    );
  }
}
