import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_redisigned/controller/controller.dart';
import 'package:spotify_redisigned/views/Homepage.dart';
import 'package:spotify_redisigned/views/playing.dart';
import 'package:spotify_redisigned/widget/navbar.dart';

import 'user_profile_page.dart';

class Layout extends StatefulWidget {
  Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Navbar()),
           Expanded(
             flex: 4,
             child: Obx(() =>IndexedStack(
    index: sideMenuController.selectedTab.value,
    children: [
      
   Homepage(),
  Playing(),
    User_profile_page(),
   
  ],)

)),
        ],
      ),
    );
  }
}