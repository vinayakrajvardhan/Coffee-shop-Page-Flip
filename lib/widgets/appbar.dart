import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Coffee Shop",
                style: TextStyle(
                  fontSize: 32.4,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff473d39),
                ),
              ),
              Text(
                "Welcome Vinayak",
                style: TextStyle(
                  fontSize: 22.4,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff473d39),
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.deepOrange,
            radius: 34.5,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/vinayak.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
