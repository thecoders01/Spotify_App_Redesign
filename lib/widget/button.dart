import 'package:flutter/material.dart';
import 'package:spotify_redisigned/constant/style.dart';

class Btn extends StatelessWidget {
  final String buttonText;
  final Color color;
  Btn({required this.buttonText,required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), 
          color: color,
          
          
          ), 
      child: Text(
        buttonText,
        style: textButton.copyWith(color: kWhiteColor),
      ),
    );
  }
}