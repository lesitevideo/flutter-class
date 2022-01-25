import 'package:flutter/material.dart';

class RowStart extends StatelessWidget {

  const RowStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'row start' ),
        ),
        body: Container(
          color: Colors.yellow,
          child:
            Row(
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
