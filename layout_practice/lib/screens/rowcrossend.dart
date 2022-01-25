import 'package:flutter/material.dart';

class CrossAxisAlignmentEnd  extends StatelessWidget {

  const CrossAxisAlignmentEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'row crossalignment end' ),
        ),
        body: Container(
          color: Colors.yellow,
          child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
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
