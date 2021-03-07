import 'package:flutter/material.dart';

class TextPaddingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Text(
        "Let's select the best taste for your coffee break",
        maxLines: 2,
        style: TextStyle(
          fontSize: 22.4,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
      ),
    );
  }
}
