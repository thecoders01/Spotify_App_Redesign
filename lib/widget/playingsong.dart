import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_visualizer/music_visualizer.dart';
import 'package:spotify_redisigned/controller/controller.dart';

class PlayingSong extends StatelessWidget {
  const PlayingSong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
       
           onTap: (){
             print("ici");
                      if(sideMenuController.selectedicon.value != 7){
      sideMenuController.selectedicon.value = 7;
                      }else{
      sideMenuController.selectedicon.value = 0;
                      }
                    },
        
        child: Container(
              // padding: EdgeInsets.all(defaultPadding * 0.75),.withOpacity(0.1)
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white
                ,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage("assets/icon_rapper.png"), fit: BoxFit.cover)
              ),
              child: Stack(children: [
      
                Align(
                  alignment: Alignment.center,
                  child: Obx(() =>Container(
                    height: 60,
                          width: 60,
                           decoration: BoxDecoration(
                             color: Colors.green.withOpacity(.6),
                              
                              borderRadius: const BorderRadius.all(Radius.circular(15)),
                            
                            ),
                    child: Center(
                      child: (sideMenuController.isplaying.value)? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MusicVisualizer(
                        barCount: 7,
                        colors: sideMenuController.colors,
                        duration: sideMenuController.duration,
                      ),
                      ):SizedBox(),
                    ), 
                  )),
                )
              ],),
            ),
      ),
    );
  }
}