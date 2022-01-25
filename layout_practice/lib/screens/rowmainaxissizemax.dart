import 'package:flutter/material.dart';

class MainAxisSizeMax  extends StatelessWidget {

  const MainAxisSizeMax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'row MainAxisSize max' ),
        ),
        body: Container(
          color: Colors.yellow,
          child:
            Row(
              mainAxisSize: MainAxisSize.max,
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
