import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'models/photo_data_model.dart';

final String url = "https://imperium-romanum.world/all/?123456";

List<Photo> parsePhoto(String responseBody){
  var list = json.decode(responseBody) as List<dynamic>;
  var photos = list.map((e) => Photo.fromJson(e)).toList();
  return photos;
}

Future<List<Photo>> fetchPhotos() async{
  final http.Response response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return compute(parsePhoto,response.body);
  } else {
    throw Exception(response.statusCode);
  }
}
