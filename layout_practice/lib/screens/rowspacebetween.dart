import 'package:flutter/material.dart';

class RowSpaceBetween extends StatelessWidget {

  const RowSpaceBetween({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text( 'row spaceBetween' ),
        ),
        body: Container(
          color: Colors.yellow,
          child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
