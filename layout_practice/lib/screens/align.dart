import 'package:flutter/material.dart';

class AlignSample extends StatelessWidget {

  const AlignSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Align')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: <Widget>[
          Align(
            child: RaisedButton(
              onPressed: () {},
              child: Text('Button'),
            ),
          ),
        ],
      ),
    );
  }
}
