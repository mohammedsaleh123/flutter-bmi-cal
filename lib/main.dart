import 'package:bmical/consts/consts_color.dart';
import 'package:bmical/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bmi Calculator',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
      ),
      home: Homeview(),
    );
  }
}
