import 'package:flutter/material.dart';
import "dart:math" show pi;
class SafeAreaSample extends StatelessWidget {

  const SafeAreaSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Safe area')),
      body: SafeArea(
        child: SizedBox.expand(
          child: Card(color: Colors.yellowAccent),
        ),
      ),
    );
  }
}
