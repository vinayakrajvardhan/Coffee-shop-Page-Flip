import 'package:cooffee/screens/home_screes.dart';
import 'package:flutter/material.dart';
import 'package:page_flip_builder/page_flip_builder.dart';

import 'screens/home_darkscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageFlipBuilder(
        flipAxis: Axis.horizontal,
        frontBuilder: (_) => HomeScreens(),
        backBuilder: (_) => HomeDarkScreens(),
      ),
    );
  }
}
