import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_redisigned/controller/controller.dart';
import 'package:spotify_redisigned/views/playing.dart';

class Recent_wrap extends StatelessWidget {
  const Recent_wrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
recent_widget(
  color: Colors.red,
topleft: 15,
toprigth: 10,
bottomleft:15,
bottomright: 10,
img:"assets/icon1.png"
),
recent_widget(
  color: Colors.yellow,
topleft: 10,
toprigth: 15,
bottomleft:10,
bottomright: 15,
img:"assets/icon2.png"
)
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
recent_widget(
  color: Colors.pink.shade50,
topleft: 15,
toprigth: 10,
bottomleft:15,
bottomright: 10,
img:"assets/icon_rapper.png"
),
recent_widget(
  color: Colors.red,
topleft: 10,
toprigth: 15,
bottomleft:10,
bottomright: 15,
img:"assets/icon1.png"
)
          ],),
        ],
      ),
    );
  }
}


class recent_widget extends StatelessWidget {

  final double topleft;
  final double toprigth;
  final double bottomleft;
  final double bottomright;
  final Color color;
  final String img;
  const recent_widget({Key? key,
   required this.topleft,  
   required this.toprigth,  
   required this.bottomleft,  
   required this.bottomright, 
    required this.color,  
    required this.img,  
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GestureDetector(
        onTap: (){
       sideMenuController.changePage(1);
        },
        child: Hero(
                              tag:img,
          child: Container(
             height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: color,
              
                      image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                      borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(topleft),
                        topRight: Radius.circular(toprigth),
                        bottomLeft: Radius.circular(bottomleft),
                        bottomRight: Radius.circular(bottomright)
                        
                        ),
                       ),
          ),
        ),
      ),
    );
  }
}