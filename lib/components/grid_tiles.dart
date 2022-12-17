import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kunjui/constants.dart';

class GridTiles extends StatefulWidget {
  const GridTiles({Key? key}) : super(key: key);

  @override
  State<GridTiles> createState() => _GridTilesState();
}

class _GridTilesState extends State<GridTiles> {
  @override
  Widget build(BuildContext context) {
    List colors = [gradient2, gradient3, gradient4, gradient1];
    List<String> cardTitle = [
      "Calming Sounds",
      "Insomnia",
      "For Children",
      "Tips For Sleeping"
    ];
    List<String> iconString = [
      'images/icons/headphone.svg',
      'images/icons/tape.svg',
      'images/icons/chart.svg',
      'images/icons/discover.svg'
    ];
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.3),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: colors[index],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 45.0),
                      child: SvgPicture.asset('images/pics/Vector.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 55.0),
                      child: SvgPicture.asset('images/pics/Vector-1.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              cardTitle[index],
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: SvgPicture.asset(
                              iconString[index],
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
