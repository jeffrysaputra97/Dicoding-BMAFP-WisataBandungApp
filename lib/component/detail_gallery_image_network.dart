import 'package:flutter/material.dart';

class DetailGalleryImageNetwork extends StatelessWidget {
  final String url;

  DetailGalleryImageNetwork({this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        child: Image.network(url),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
