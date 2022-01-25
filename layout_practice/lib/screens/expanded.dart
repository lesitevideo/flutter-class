import 'package:flutter/material.dart';

class ExpandedSample extends StatelessWidget {

  const ExpandedSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded')),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.red),
              child: Image.asset("assets/images/sloth.jpg"),
              alignment: Alignment.topLeft,
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.green),
              child: Image.asset("assets/images/sloth.jpg"),
              alignment: Alignment.center,
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Image.asset("assets/images/sloth.jpg"),
              alignment: Alignment.bottomRight,
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
