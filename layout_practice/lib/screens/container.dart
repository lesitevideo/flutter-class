import 'package:flutter/material.dart';

class ContainerSample extends StatelessWidget {

  const ContainerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container')),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //color: Colors.yellowAccent,
        child: Image.asset("assets/images/sloth.jpg"),
        decoration: BoxDecoration(color: Colors.red),
        foregroundDecoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.5),
        ),
      ),
    );
  }
}
