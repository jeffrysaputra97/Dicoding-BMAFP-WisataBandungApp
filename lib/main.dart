import 'package:flutter/material.dart';
import 'package:wisata_bandung/screen/detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData.dark(),
      home: DetailScreen(),
    );
  }
}
