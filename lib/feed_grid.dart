import 'package:flutter/material.dart';

class FeedGrid extends StatelessWidget {
  List feed = [];
  FeedGrid({this.feed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        scrollDirection: Axis.vertical,
        children: feed
            .map(
              (e) => Image.network(
                  'https://www.pinkvilla.com/${e['field_photo_image_section']}'),
            )
            .toList(),
      ),
    );
  }
}
