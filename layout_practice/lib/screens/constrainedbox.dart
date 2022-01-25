import 'package:flutter/material.dart';

class ConstrainedBoxSample extends StatelessWidget {

  const ConstrainedBoxSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'ConstrainedBox' ),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: const Card(
            child: const Text('Hello World!'),
            color: Colors.yellow,
          ),
        ),
      );
  }
}
