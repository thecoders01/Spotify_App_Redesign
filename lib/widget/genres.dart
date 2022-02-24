import 'package:flutter/material.dart';

class Genres extends StatelessWidget {
  final String txt;
  final double heigth;
  final double width;
  final Color color;
  const Genres({Key? key, required this.txt,  required this.color, 
  required this.heigth, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigth,
                          width: width,
                           decoration: BoxDecoration(
                             color: color.withOpacity(.6),
                              border:Border.all(width: 0.5, color:Colors.grey.shade300),
                              borderRadius: const BorderRadius.all(Radius.circular(15)),
                            
                            ),
      child: Center(
        child: Text(txt,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
    );
  }
}