import 'package:cooffee/model/coffee_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Coffee data;

  const DetailsScreen({Key key, this.data}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4b4b8),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 12.3, horizontal: 12.3),
              height: 341,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                        size: 44.4,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.data.name,
                        style: TextStyle(
                            fontSize: 44.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.brown),
                      ),
                      CircleAvatar(
                        radius: 30.5,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 34.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 430,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xfffaf6f1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(55.6),
                      topRight: Radius.circular(55.6),
                    ),
                  ),
                ),
                Positioned(
                  top: 35,
                  right: 25.0,
                  child: Container(
                    height: 350,
                    width: 350,
                    child: Hero(
                      tag: "${widget.data.imagepath}",
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23.0),
                          image: DecorationImage(
                            image:
                                AssetImage("assets/${widget.data.imagepath}"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  top: 67,
                  child: Text(
                    "\$${widget.data.price}",
                    style: TextStyle(
                        fontSize: 44.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
