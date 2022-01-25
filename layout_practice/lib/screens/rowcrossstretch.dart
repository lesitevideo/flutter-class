import 'package:flutter/material.dart';

class CrossAxisAlignmentStretch  extends StatelessWidget {

  const CrossAxisAlignmentStretch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'row crossalignment stretch' ),
        ),
        body: Container(
          color: Colors.yellow,
          child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
