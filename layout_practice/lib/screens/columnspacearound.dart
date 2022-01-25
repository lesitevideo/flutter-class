import 'package:flutter/material.dart';

class ColumnSpaceAround extends StatelessWidget {

  const ColumnSpaceAround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'column spaceAround' ),
        ),
        body: Container(
          color: Colors.yellow,
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
