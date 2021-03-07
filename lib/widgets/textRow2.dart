import 'package:flutter/material.dart';

class TextRow2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Taste of the week",
            style: TextStyle(
              fontSize: 27.4,
              fontWeight: FontWeight.w400,
              color: Color(0xff473d39),
            ),
          ),
          Text(
            "See all",
            style: TextStyle(
              fontSize: 25.4,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
