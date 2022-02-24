import 'package:flutter/material.dart';
import 'package:spotify_redisigned/widget/genres.dart';

class Type_card extends StatelessWidget {
  final String txt;
  final String txt1;
  final String txt2;
  final String img;
  final Color color;
  const Type_card({Key? key, required this.txt, required this.txt1,required this.img,
   required this.txt2,required this.color,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 250,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(15)),

            image: DecorationImage(
                    image: AssetImage(img), fit: BoxFit.cover)
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Genres(txt: txt, color: Colors.transparent, heigth: 35, width: 75),
              )
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 90,
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    CircleAvatar(
                  maxRadius: 27,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.play_arrow,color: Colors.white,),
                ),
                SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          txt2,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          txt1,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
