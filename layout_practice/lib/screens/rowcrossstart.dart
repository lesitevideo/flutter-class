import 'package:flutter/material.dart';

class CrossAxisAlignmentStart  extends StatelessWidget {

  const CrossAxisAlignmentStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'row spaceAround' ),
        ),
        body: Container(
          color: Colors.yellow,
          child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
