import 'package:flutter/material.dart';
import '../models/photo_data_model.dart';
import '../screens/place_details.dart';

class PhotoTile extends StatelessWidget {
  final Photo photo;

  PhotoTile({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: Hero(
              tag: photo.id,
              child: CircleAvatar(
                backgroundImage: NetworkImage(photo.thumbnailUrl),
              ),
            ),
            title: Text('${photo.title}'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlaceDetailsPage(photo: photo)));
            },
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
