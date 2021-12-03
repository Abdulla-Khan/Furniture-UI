import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_ui/const.dart';
import 'package:furniture_ui/screens/products/components/body.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text('Dashboard'),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/notification.svg'))
        ],
      ),
      body: Body(),
    );
  }
}
