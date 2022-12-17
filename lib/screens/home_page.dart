import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/appbar_list_scroller.dart';
import '../components/grid_tiles.dart';
import '../components/scrollable_mainTile.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          backgroundColor: navBackgroundColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "images/icons/headphone.svg",
                color: _selectedIndex == 0 ? navBoxShadow : greyTextColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "images/icons/chart.svg",
                color: _selectedIndex == 1 ? navBoxShadow : greyTextColor,
              ),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "images/icons/profile.svg",
                color: _selectedIndex == 2 ? navBoxShadow : greyTextColor,
              ),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: navBoxShadow,
          onTap: _onItemTapped,
        ),
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: ScaffoldBackgroundColor,
          title: Text(
            "Discover",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: SvgPicture.asset(
                'images/icons/search.svg',
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    height: 3,
                    width: 35,
                    decoration: BoxDecoration(color: navBoxShadow),
                  ),
                ),
                AppBarScrollList(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(color: greyTextColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        "See All",
                        style: TextStyle(color: lightBlueTextColor),
                      ),
                    ),
                  ],
                ),
                ScrollableMainTiles(),
                Text(
                  "Recent",
                  style: TextStyle(color: greyTextColor),
                ),
                SizedBox(
                  height: 10,
                ),
                GridTiles(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
