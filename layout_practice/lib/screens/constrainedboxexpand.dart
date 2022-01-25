import 'package:flutter/material.dart';

class ConstrainedBoxExpandSample extends StatelessWidget {

  const ConstrainedBoxExpandSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'ConstrainedBoxExpand' ),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: double.infinity,
            maxWidth: double.infinity,
            minHeight: 300,
            maxHeight: 300,
          ),
          child: const Card(
            child: const Text('Hello World!'),
            color: Colors.yellow,
          ),
        ),
      );
  }
}
