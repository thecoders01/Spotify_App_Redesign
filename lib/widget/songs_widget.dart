import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:music_visualizer/music_visualizer.dart';
import 'package:spotify_redisigned/controller/controller.dart';

class Songs_widget extends StatelessWidget {
  final String? nbr;
  final String? title;
  final String? artistname;
  final String? time;
  const Songs_widget({Key? key,
  required this.nbr,
  required this.title,
  required this.artistname,
  required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          print("songs");
          if(sideMenuController.isSongPlaying.value != nbr){
      sideMenuController.isSongPlaying.value = nbr!;
      print("play");
      print(sideMenuController.isSongPlaying.value);
                      }else{
      sideMenuController.isSongPlaying.value = "";
      print("pause");
                      }
        },
        child: Obx(() =>Row(
          children: [
           (sideMenuController.isSongPlaying.value == nbr)?SizedBox(width: 5,): SizedBox(width: 20,),
            (sideMenuController.isSongPlaying.value == nbr)? Container(
              height: 20,
              width: 20,
              color:Colors.transparent,
              child: MusicVisualizer(
              barCount: 3,
              colors: sideMenuController.colors,
              duration: sideMenuController.duration,
                      ),
            ):Text(nbr!,style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),),
      
      SizedBox(width: 20,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Text(title!,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
      SizedBox(height: 5,),
      Row(
        children: [
            Text(artistname!,style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),),
           SizedBox(width: 8,),
            CircleAvatar(
              maxRadius: 3,
              backgroundColor: Colors.grey,),
             SizedBox(width: 8,),
            Text(time!,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
       
      
        ],
      ),
      
      ],),
      
     // SizedBox(width: 68,),
     //  Icon(LineIcons.horizontalEllipsis,color: Colors.grey,size: 35,)
        ],)),
      ),
    );
  }
}