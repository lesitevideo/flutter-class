import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/photo_data_model.dart';

class PlaceDetailsPage extends StatelessWidget {

  final Photo photo;

  PlaceDetailsPage({required this.photo});



  void customLaunch(command) async{
    if(await canLaunch(command)){
      await launch(command);
    }else{
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${photo.title}'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: Hero(
                tag: photo.id,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(photo.thumbnailUrl),
                  radius: 100.0,
                ),
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Text(
              '${photo.title}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
            /*SizedBox(
              height: 12.0,
            ),
            Text(
              '${photo.category}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),*/
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
                  child: Text(
                    photo.text,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}