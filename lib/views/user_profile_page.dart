import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_redisigned/controller/controller.dart';
import 'package:spotify_redisigned/widget/genres.dart';
import 'package:spotify_redisigned/widget/recent_artist.dart';
import 'package:spotify_redisigned/widget/songs_widget.dart';

class User_profile_page extends StatelessWidget {
  const User_profile_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
             flex: 2,
            child: Container(
          decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.2, color: Colors.grey.shade300),
                  ),
                  color: Colors.black,
                ),
            child: Column(
              children: [
SizedBox(
                      height: 55,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         GestureDetector(
        onTap: (){
       sideMenuController.changePage(1);
        },
                          child: Icon(Iconsax.arrow_left_1)),
                        SizedBox(
                          width: 165,
                        ),
                       Obx(()=> BouncingWidget(
  duration: Duration(milliseconds: 100),
  scaleFactor: 1.5,
  onPressed: () {
    print("onPressed");
     if(!sideMenuController.isFolling.value ){
      sideMenuController.isFolling.value = true;
      print("play");
      print(sideMenuController.isFolling.value);
                      }else{
      sideMenuController.isFolling.value = false;
      print("pause");
                      }
  },
                          child: Genres(
                                txt: "Followed",
                                color:(sideMenuController.isFolling.value)? Colors.purple: Colors.transparent,
                                heigth: 38,
                                width: 100),
                        )),
                        
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Profile_widget()
              ],
            ),
          )),
          Expanded(
            flex: 4,
            child: Container(
            color: Colors.black,
            child: ListView.builder(
        itemCount: sideMenuController.data_songs.value.length,
        itemBuilder: (BuildContext context,int index){
          return Songs_widget(nbr: sideMenuController.data_songs.value[index]["nbr"],
           title: sideMenuController.data_songs.value[index]["title"], 
          artistname: sideMenuController.data_songs.value[index]["Artist name"], 
          time: sideMenuController.data_songs.value[index]["time"]);
        }
        ),
          )),
        ],
      ),
    );
  }
}

/*
ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            leading: Icon(Icons.list),
            trailing: Text("GFG",
                           style: TextStyle(
                             color: Colors.green,fontSize: 15),),
            title:Text("List item $index")
            );
*/

/*
SingleChildScrollView(
              child: Column(children: [
Songs_widget()
            ],),)
*/

Widget Profile_widget(){
  return Row(children: [
    SizedBox(width: 5,),
    recent_widget(
  color: Colors.pink.shade50,
topleft: 20,
toprigth: 20,
bottomleft:20,
bottomright: 20,
img:"assets/icon_rapper.png"
),
SizedBox(width: 20,),
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
Text("Tiësto",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
SizedBox(height: 10,),
Row(children: [
  Column(children: [
    Text("21",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
    Text("Albums",style: TextStyle(fontSize: 17,color: Colors.grey),),
  ],),
  SizedBox(width: 20,),
  Column(children: [
    Text("172k",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
    Text("Followers",style: TextStyle(fontSize: 17,color: Colors.grey),),
  ],),
],)
  ],
)
  ],);
}