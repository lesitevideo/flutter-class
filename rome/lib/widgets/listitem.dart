import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../category.dart';
import '../fiche.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.title,
    required this.thumbnailUrl,
    required this.fiches,
    this.text = '',
  }) : super(key: key);

  final String title;
  final String thumbnailUrl;
  final List fiches;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (text == "") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                        categorytitle: title, categorydetails: fiches)
                )
            );
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ShowFiche(ficheTitre: title, ficheText: text) // fiche
                    )
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Stack(
                children: <Widget>[
                  new Positioned.fill(
                    child: Image.network(
                      thumbnailUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  new Align(
                    alignment: Alignment.bottomCenter,
                    widthFactor: 1,
                    child: new Container(
                        width: double.infinity,
                        color: Colors.white.withOpacity(0.75),
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 15),
                        child: new Text(
                          title,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              )),
        ));
  }
}
