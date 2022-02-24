import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SideMenuController extends GetxController {
  static SideMenuController instance = Get.find();
  
  var selectedTab = 0.obs;
  var selectedicon = 0.obs;
  var isplaying =false.obs;
  var isSongPlaying = "".obs;
  var isFolling = false.obs;
  var value = 5.0.obs;
  final List<Color> colors = [
    Colors.white,
    Colors.grey,
    Colors.white,
    Colors.grey
  ];

  var data_songs =[
    {
      "nbr":"01",
      "title":"I will be here",
      "Artist name":'Tiësto',
      "time":"4:59"
    },
    {
      "nbr":"02",
      "title":"Not The Things ",
      "Artist name":'Tiësto feat. kele',
      "time":"4:59"
    },
    {
      "nbr":"03",
      "title":"Tiësto",
      "Artist name":'Tiësto',
      "time":"3:55"
    },
    {
      "nbr":"04",
      "title":"Boom",
      "Artist name":'Tiësto',
      "time":"6:24"
    },
    {
      "nbr":"05",
      "title":"Escape Me",
      "Artist name":'Tiësto',
      "time":"3:55"
    },
    {
      "nbr":"06",
      "title":"Surround By Ligth",
      "Artist name":'Tiësto',
      "time":"6:24"
    },
    {
      "nbr":"07",
      "title":"Kaleidoscop",
      "Artist name":'Tiësto',
      "time":"3:55"
    },
    {
      "nbr":"08",
      "title":"Fell it in my bones",
      "Artist name":'Tiësto',
      "time":"4:59"
    },
    {
      "nbr":"09",
      "title":"Adagio For Strings",
      "Artist name":'Tiësto',
      "time":"6:24"
    },
    {
      "nbr":"10",
      "title":"I Want You",
      "Artist name":'Tiësto',
      "time":"6:24"
    },
  ].obs;

  final List<int> duration = [900, 700, 600, 800, 500];

    void changePage(int pageNum) {
   
     
      selectedTab.value = pageNum;
    
   
  }

  Widget slider(){
    return SfSlider.vertical(
                  min: 2.0,
                  max: 10.0,
                  value: value.value,
                  inactiveColor: Colors.grey,
                  activeColor: Colors.white,
                  onChanged: (dynamic newValue){
                    value.value = newValue;
                  },
                )
          ;
  }
  }