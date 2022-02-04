import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rome/widgets/bottomnavigationbar.dart';
import 'package:rome/widgets/listitem.dart';

class CategoryDetail {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;
  final List fiches;

  const CategoryDetail(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl,
      required this.fiches});

  factory CategoryDetail.fromJson(Map<String, dynamic> json) {
    //print( json );
    return CategoryDetail(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      fiches: json['fiches'] as List,
    );
  }
}

class CategoryScreen extends StatelessWidget {
  //final Person person;
  final String categorytitle;
  final List categorydetails;

  const CategoryScreen(
      {Key? key, required this.categorytitle, required this.categorydetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(categorytitle),
        ),
        bottomNavigationBar: const MyNavigationBar(),
        body: SafeArea(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: categorydetails.length,
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              itemBuilder: (context, index) {
                return ListItem(
                    title: categorydetails[index]["title"],
                    thumbnailUrl: categorydetails[index]["thumbnailUrl"],
                    fiches: const [],
                    text: categorydetails[index]["text"]);
              }),
        ));
  }
}
