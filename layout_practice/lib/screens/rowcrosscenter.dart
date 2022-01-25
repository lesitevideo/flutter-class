import 'package:flutter/material.dart';

class CrossAxisAlignmentCenter  extends StatelessWidget {

  const CrossAxisAlignmentCenter({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.center,
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
