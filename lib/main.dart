import 'package:flutter/material.dart';
import 'package:furniture_ui/const.dart';
import 'package:furniture_ui/screens/products/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: ProductsScreen(),
    );
  }
}
