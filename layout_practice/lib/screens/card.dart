import 'package:flutter/material.dart';

class CardSample extends StatelessWidget {

  const CardSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'column start' ),
        ),
        body: Card(child: const Text('Hello World!'), color: Colors.yellow)
      );
  }
}
