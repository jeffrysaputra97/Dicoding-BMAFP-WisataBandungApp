import 'package:flutter/material.dart';

class DetailIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  DetailIconText({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        SizedBox(height: 8.0),
        Text(text),
      ],
    );
  }
}
