import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_redisigned/widget/button.dart';
import 'package:spotify_redisigned/widget/genres.dart';
import 'package:spotify_redisigned/widget/recent_artist.dart';
import 'package:spotify_redisigned/widget/type_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              border: Border(
               // left: BorderSide(width: 0.2, color: Colors.grey.shade300),
                bottom: BorderSide(width: 0.2, color: Colors.grey.shade300),
              ),
              color: Colors.black,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Iconsax.search_normal),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Search..."),
                      SizedBox(
                        width: 140,
                      ),
                      CircleAvatar(
                        maxRadius: 20,
                        backgroundImage: AssetImage("assets/pp.jpg"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              flex: 7,
              child: Container(
                color: Colors.black,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Type_card(
                                txt: "Sport",
                                txt2: "Daily mix",
                                txt1: "Coldplay, PK, Ash, Mo...",
                                img: "assets/icon_categori_f1.png",
                                color: Colors.blue.shade900),
                            Type_card(
                                txt: "House",
                                txt2: "Release Radar",
                                txt1: "Updates every friday",
                                img: "assets/icon_categori_f2.png",
                                color: Colors.purple.shade900),
                            Type_card(
                                txt: "Work",
                                txt2: "Liked Songs",
                                txt1: "Your favorites tracks",
                                img: "assets/icon_categoriem1.png",
                                color: Colors.yellow.shade900),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Text(
                              "Genres",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            )
                          ],
                        ),
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
spacing:8.0,
runSpacing: 8.0,
                        children: [
                          Genres(
                              txt: "Classic",
                              color: Colors.grey.shade900,
                              heigth: 35,
                              width: 75),
                          Genres(
                              txt: "Hip-Hop",
                              color: Colors.grey.shade900,
                              heigth: 35,
                              width: 90),
                          Genres(
                              txt: "Blues",
                              color: Colors.grey.shade900,
                              heigth: 35,
                              width: 75),
                          Genres(
                              txt: "House",
                              color: Colors.grey.shade900,
                              heigth: 35,
                              width: 75),
                          Genres(
                              txt: "Chillout",
                              color: Colors.grey.shade900,
                              heigth: 35,
                              width: 75),
                          Genres(
                              txt: "Country",
                              color: Colors.grey.shade900,
                              heigth: 35,
                              width: 85),
                          Genres(
                              txt: "Techno",
                              color: Colors.grey.shade900,
                              heigth: 35,
                              width: 75),
                          Genres(
                              txt: "Minimal",
                              color: Colors.grey.shade900,
                              heigth: 35,
                              width: 75),
                          Genres(
                              txt: "Electronics",
                              color: Colors.grey.shade900,
                              heigth: 38,
                              width: 100),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Btn(
                            buttonText: "All Genres",
                            color: Colors.grey.shade900),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Text(
                              "Recent Artists",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            )
                          ],
                        ),
                      ),
                      Recent_wrap()
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
