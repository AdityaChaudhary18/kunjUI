import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollableMainTiles extends StatefulWidget {
  const ScrollableMainTiles({Key? key}) : super(key: key);

  @override
  State<ScrollableMainTiles> createState() => _ScrollableMainTilesState();
}

class _ScrollableMainTilesState extends State<ScrollableMainTiles> {
  List<String> mainTilePictures = [
    "images/pics/background1.png",
    "images/pics/background2.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mainTilePictures.length,
        itemBuilder: (c, i) {
          return Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  mainTilePictures[i],
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06,
                    left: MediaQuery.of(context).size.width * 0.12),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sleep Meditation",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "7 Day Audio Series",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("images/icons/headphone.svg"),
                          // Image.asset(name),
                          SizedBox(width: 10),
                          SvgPicture.asset("images/icons/tape.svg"),

                          // Image.asset(name)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
