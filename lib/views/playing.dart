import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:music_visualizer/music_visualizer.dart';
import 'package:spotify_redisigned/controller/controller.dart';
import 'package:spotify_redisigned/widget/Music_player_widget.dart';

class Playing extends StatelessWidget {
  const Playing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.2, color: Colors.grey.shade300),
                  ),
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 55,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              sideMenuController.changePage(0);
                            },
                            child:const Icon(Iconsax.arrow_left_1)),
                      const  SizedBox(
                          width: 65,
                        ),
                     const   Text(
                          "Now Playing",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        GestureDetector(
                            onTap: () {
                              sideMenuController.changePage(2);
                            },
                            child: Icon(Iconsax.folder)),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Hero(
                      tag: "assets/icon_rapper.png",
                      child: Container(
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                            color: Colors.pink.shade50,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                image: AssetImage("assets/icon_rapper.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "I will be here",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Tiësto",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 4,
              child: Obx(() => Container(
                    color: Colors.black,
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lirycs",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                '''
       When the big roads falls a part
   and you think that the feeling will linger
 you need somewhere to start i will be here,i will be here you don't mind if life's not thet pretty it will soon deasappear and will be miles away.Away from here               

                ''',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: Colors.transparent,
                          height: 210,
                          child: Column(
                            children: [
                              Music_player_widget(),
                              SizedBox(
                                height: 40,
                              ),
                              (sideMenuController.isplaying.value)
                                  ? SizedBox(
                                      height: 30,
                                      child: MusicVisualizer(
                                        barCount: 30,
                                        colors: sideMenuController.colors,
                                        duration: sideMenuController.duration,
                                      ),
                                    )
                                  : SizedBox(),
                              (sideMenuController.isplaying.value)
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "2:28",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          Text(
                                            "3:48",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                      )
                    ]),
                  ))),
        ],
      ),
    );
  }
}
