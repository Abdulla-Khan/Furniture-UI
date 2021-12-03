// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_ui/components/product_card.dart';
import 'package:furniture_ui/components/search.dart';
import 'package:furniture_ui/const.dart';
import 'package:furniture_ui/models/products.dart';
import 'package:furniture_ui/components/category.dart';
import 'package:furniture_ui/screens/products/details/details_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox((value) {}),
          Category(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => Detail(products[index]))),
                      child: ProductCard(
                        item: index,
                        product: products[index],
                      ),
                    );
                  })
            ],
          ))
        ],
      ),
    );
  }
}
