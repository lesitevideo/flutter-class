import 'package:flutter/material.dart';
import "dart:math" show pi;
class SizedBoxAsPadding extends StatelessWidget {

  const SizedBoxAsPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox as padding')),
      body: Column(
        children: <Widget>[
          Icon(Icons.star, size: 50),
          const SizedBox(height: 100),
          Icon(Icons.star, size: 50),
          Icon(Icons.star, size: 50),
        ],
      ),
    );
  }
}
