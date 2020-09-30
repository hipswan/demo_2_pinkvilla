import 'package:flutter/material.dart';
import 'feed_grid.dart';
import 'helper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List feed = [];
  Helper helper;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    helper = Helper();
    helper.getFeedAsPerPage('1').then((value) {
      print(value[0]['field_photo_image_section']);
      feed = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        itemBuilder: (context, index) {
          return FeedGrid(
            feed: feed,
          );
        },
      ),
    );
  }
}
