import 'package:flutter/material.dart';
import "dart:math" show pi;
class SizedBoxSample extends StatelessWidget {

  const SizedBoxSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox')),
      body: SizedBox.expand(
        child: Card(
          child: Text('Hello World!'),
          color: Colors.yellowAccent,
        ),
      ),
    );
  }
}
