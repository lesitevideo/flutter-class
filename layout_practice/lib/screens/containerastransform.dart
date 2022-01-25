import 'package:flutter/material.dart';
import "dart:math" show pi;
class ContainerAsTransform extends StatelessWidget {

  const ContainerAsTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container.transform')),
      body: Container(
        height: 300,
        width: 300,
        alignment: Alignment.topRight ,
        transform: Matrix4.rotationZ( pi / 4 ),
        decoration: BoxDecoration(color: Colors.yellowAccent),
        child: Image.asset("assets/images/sloth.jpg"),
      ),
    );
  }
}
