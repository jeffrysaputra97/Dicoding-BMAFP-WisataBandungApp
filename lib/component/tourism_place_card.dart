import 'package:flutter/material.dart';
import 'package:wisata_bandung/model/tourism_place.dart';
import 'package:wisata_bandung/screen/detail_screen.dart';

class TourismPlaceCard extends StatelessWidget {
  final TourismPlace place;

  TourismPlaceCard({this.place});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => DetailScreen(place: place),
          ),
        );
      },
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Hero(
                tag: 'image${place.name}',
                child: Image.asset(place.imageAsset),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      place.name,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10),
                    Text(place.location),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
