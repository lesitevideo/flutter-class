import 'package:flutter/material.dart';

class CrossAxisAlignmentBaseline  extends StatelessWidget {

  const CrossAxisAlignmentBaseline({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  'BIG',
                  style: TextStyle(fontSize: 55),
                ),
                Text(
                  'small',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
        )
      );
  }
}
