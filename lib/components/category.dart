import 'package:flutter/material.dart';
import 'package:furniture_ui/const.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selected = 0;
  List Categories = ['All', 'Sofa', 'Park Bench', 'ArmChair'];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        height: 30,
        child: ListView.builder(
            itemCount: Categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  margin: EdgeInsets.only(
                      left: kDefaultPadding,
                      right:
                          index == Categories.length - 1 ? kDefaultPadding : 0),
                  decoration: BoxDecoration(
                      color: index == selected
                          ? Colors.white.withOpacity(0.4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    Categories[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }));
  }
}
