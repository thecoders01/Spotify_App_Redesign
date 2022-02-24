import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:spotify_redisigned/controller/controller.dart';

class Music_player_widget extends StatelessWidget {
  const Music_player_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(LineIcons.retweet,size: 30,color: Colors.grey,),
        SizedBox(width: 10,),
        Icon(LineIcons.caretLeft,size: 30,),
        SizedBox(width: 10,),
        GestureDetector(
          onTap: (){
            print("tap");
            if(!sideMenuController.isplaying.value ){
      sideMenuController.isplaying.value = true;
      print("play");
      print(sideMenuController.isplaying.value);
                      }else{
      sideMenuController.isplaying.value = false;
      print("pause");
                      }
          },
          child: CircleAvatar(
                      maxRadius: 37,
                      backgroundColor: Colors.green,
                      child: Icon((sideMenuController.isplaying.value )?Icons.pause:Icons.play_arrow,color: Colors.white,),
                    ),
        ),
                  SizedBox(width: 10,),
                  Icon(LineIcons.caretRight,size: 30,),
                  SizedBox(width: 10,),
                  Icon(LineIcons.random,size: 30,color: Colors.grey,),
      ],),
    ));
  }
}