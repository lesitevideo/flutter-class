import 'package:flutter/material.dart';

class StackPositionedSample extends StatelessWidget {

  const StackPositionedSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack + positioned')),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Material(color: Colors.red),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/sloth.jpg"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/sloth.jpg"),
          ),
        ],
      ),
    );
  }
}
