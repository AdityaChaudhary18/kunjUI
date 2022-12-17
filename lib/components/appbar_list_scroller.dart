import 'package:flutter/material.dart';

import '../constants.dart';

class AppBarScrollList extends StatefulWidget {
  const AppBarScrollList({Key? key}) : super(key: key);

  @override
  State<AppBarScrollList> createState() => _AppBarScrollListState();
}

class _AppBarScrollListState extends State<AppBarScrollList> {
  List<String> appBarItemsList = [
    "Insomnia",
    "Depression",
    "Baby Sleep",
    "Insomnia",
    "Depression",
  ];

  int selectedAppbarItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: appBarItemsList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedAppbarItemIndex = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedAppbarItemIndex == index
                        ? navBoxShadow
                        : navBackgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.only(right: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Center(
                      child: Text(appBarItemsList[index]),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
