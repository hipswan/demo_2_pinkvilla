import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Helper {
  static var endpoint = 'https://www.pinkvilla.com/photo-gallery-feed-page';
  Future getFeedAsPerPage(String pageNumber) async {
    http.Response response = await http.get('$endpoint/page/$pageNumber');
    var jsonData = jsonDecode(response.body)['nodes'] as List;
    List<dynamic> nodes = jsonData.map((e) => e['node']).toList();
    print(nodes);
    return nodes;
  }

  // Future<String> getImage(dest) async{
  //     http.Response response = await http.get('$endpoint/$dest');
  //     return response.
  // }
}
