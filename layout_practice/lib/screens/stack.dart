import 'package:flutter/material.dart';

class StackSample extends StatelessWidget {

  const StackSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget main = Scaffold(
      appBar: AppBar(title: Text('Stack')),
    );

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        main,
        Banner(
          message: "Top Start",
          location: BannerLocation.topStart,
        ),
        Banner(
          message: "Top End",
          location: BannerLocation.topEnd,
        ),
        Banner(
          message: "Bottom Start",
          location: BannerLocation.bottomStart,
        ),
        Banner(
          message: "Bottom End",
          location: BannerLocation.bottomEnd,
        ),
      ],
    );
  }
}
