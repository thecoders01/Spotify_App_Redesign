import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_redisigned/controller/navbarcontroller.dart';
import 'package:spotify_redisigned/views/Layout.dart';

void main() {


   Get.put(SideMenuController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Spotify redesigned',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Layout(),
    );
  }
}
