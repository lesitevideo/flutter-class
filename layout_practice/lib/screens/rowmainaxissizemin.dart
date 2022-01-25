import 'package:flutter/material.dart';

class MainAxisSizeMin  extends StatelessWidget {

  const MainAxisSizeMin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'row MainAxisSize min' ),
        ),
        body: Container(
          color: Colors.yellow,
          child:
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.star, size: 50),
                Icon(Icons.star, size: 200),
                Icon(Icons.star, size: 50),
              ],
            ),
        )
      );
  }
}
