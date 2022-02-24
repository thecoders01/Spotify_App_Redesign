import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:spotify_redisigned/controller/controller.dart';
import 'package:spotify_redisigned/widget/playingsong.dart';


//  sideMenuController.changePage(1);
class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Container(
      height: Get.height,
      decoration:  BoxDecoration(
      border: Border(
        
        right: BorderSide(width: 0.2, color:Colors.grey.shade300 )
       
      ),
     color: Colors.black,
    ),
      
    child: Column(children: [
Container(
  height: Get.height/2.3,
  //color: Colors.blue,
  child: Column(children: [
    SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0,top:18),
      child: Image.asset("assets/logo_spotify.png",height: 70,width: 70,),
    ),

    Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom:8),
      child: GestureDetector(
        onTap: (){
          sideMenuController.changePage(0);
        },
        child: Icon(Iconsax.home_15,color:(sideMenuController.selectedTab.value == 0)? Colors.white:Colors.grey,size:(sideMenuController.selectedTab.value == 0)? 26:25,)),
    ),
    SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom:8),
      child: GestureDetector(
        onTap: (){
          sideMenuController.changePage(1);
        },
        child: Icon(Iconsax.discover_14,color:(sideMenuController.selectedTab.value == 1)? Colors.white:Colors.grey,size:(sideMenuController.selectedTab.value == 1)? 26:25,)),
    ),
    SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom:8),
      child: GestureDetector(
        onTap: (){
          sideMenuController.changePage(2);
        },
        child: Icon(Iconsax.microphone5,color:(sideMenuController.selectedTab.value == 2)? Colors.white:Colors.grey,size:(sideMenuController.selectedTab.value == 2)? 26:25,)),
    ),
    SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom:8),
      child: GestureDetector(
        onTap: (){
          sideMenuController.changePage(3);
        },
        child: Icon(Iconsax.chart_26,color:(sideMenuController.selectedTab.value == 3)? Colors.white:Colors.grey,size:(sideMenuController.selectedTab.value == 3)? 26:25,)),
    ),
    SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom:8),
      child: GestureDetector(
        onTap: (){
          sideMenuController.changePage(4);
        },
        child: Icon(Iconsax.clock5,color:(sideMenuController.selectedTab.value == 4)? Colors.white:Colors.grey,size:(sideMenuController.selectedTab.value == 4)? 26:25,)),
    ),
    //SizedBox(height: 20,),
  ],),

),

Container(
  height: Get.height/1.77,
  //color: Colors.red,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
 Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom:8),
      child: GestureDetector(
        onTap: (){
          sideMenuController.selectedicon.value =2;
        },
        child: Icon(LineIcons.verticalEllipsis,color:(sideMenuController.selectedicon.value == 2)? Colors.green:Colors.grey,size:(sideMenuController.selectedicon.value == 2)? 26:25,)),
    ),
    SizedBox(height: 20,),
   (sideMenuController.selectedicon.value ==2)? sideMenuController.slider():SizedBox(height: 1,),
    SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom:8),
      child: GestureDetector(
        onTap: (){
          
          if(sideMenuController.selectedicon.value !=2){
sideMenuController.selectedicon.value =2;
          }else{
            sideMenuController.selectedicon.value =0;
          }
        },
        child: Icon(Iconsax.volume_high,color:(sideMenuController.selectedicon.value == 2)? Colors.white:Colors.grey,size:(sideMenuController.selectedicon.value == 2)? 26:25,)),
    ),
    SizedBox(height: 20,),
     Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom:8),
      child: GestureDetector(
        onTap: (){
          
          if(sideMenuController.selectedicon.value !=1){
sideMenuController.selectedicon.value =1;
          }else{
            sideMenuController.selectedicon.value =0;
          }
        },
        child: Icon(Iconsax.heart_add5,color:(sideMenuController.selectedicon.value == 1)? Colors.green:Colors.grey,size:(sideMenuController.selectedicon.value == 1)? 26:25,)),
    ),
    PlayingSong(),
    SizedBox(height: 20,),
  ],),
)
    ],),
    
    ));
  }
}


