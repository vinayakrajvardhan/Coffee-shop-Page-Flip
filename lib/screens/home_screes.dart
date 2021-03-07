import 'package:cooffee/widgets/appbar.dart';
import 'package:cooffee/widgets/container_app.dart';
import 'package:cooffee/widgets/container_app2.dart';

import 'package:cooffee/widgets/textRow2.dart';
import 'package:cooffee/widgets/textpaddingview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeScreens extends StatefulWidget {
  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffaf6f1),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 3.4,
              backgroundColor: Color(0xffdbb88a),
              centerTitle: true,
              title: Text(
                "Have a Coffee",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  AppBarView(),
                  TextPaddingView(),
                  SizedBox(
                    height: 60,
                  ),
                  TextRow2(),
                  SizedBox(
                    height: 60,
                  ),
                  ContainerApp(),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Explore nearby",
                          style: TextStyle(
                            fontSize: 33.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                          ),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            fontSize: 23.0,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ContainerApp2(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.cup_ent),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
