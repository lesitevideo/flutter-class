import 'package:flutter/material.dart';

class ColumnEnd extends StatelessWidget {

  const ColumnEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'column end' ),
        ),
        body: Container(
          color: Colors.yellow,
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.star, size: 50),
                Icon(Icons.star, size: 50),
                Icon(Icons.star, size: 50),
              ],
            ),
        )
      );
  }
}
