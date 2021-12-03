// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui/const.dart';
import 'package:furniture_ui/models/products.dart';
import 'package:furniture_ui/screens/products/details/components/body.dart';

class Detail extends StatelessWidget {
  final Product product;

  const Detail(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
        title: Text(
          "Back".toUpperCase(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
          )
        ],
      ),
      body: Body(product: product),
    );
  }
}
