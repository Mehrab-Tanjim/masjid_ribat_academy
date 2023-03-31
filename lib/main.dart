import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masjid_ribat_academy/views/bottom_navigation.dart';
import 'package:masjid_ribat_academy/views/math.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}
