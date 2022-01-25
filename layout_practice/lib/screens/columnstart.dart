import 'package:flutter/material.dart';

class ColumnStart extends StatelessWidget {

  const ColumnStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'column start' ),
        ),
        body: Container(
          color: Colors.yellow,
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
