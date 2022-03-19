
import 'package:flutter/material.dart';

import '../components/photo_tile.dart';
import '../models/photo_data_model.dart';
import '../parse_fetch_photos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Photo> _photos = <Photo>[];
  List<Photo> _photosDisplay = <Photo>[];

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchPhotos().then((value) {
      setState(() {
        _isLoading = false;
        _photos.addAll(value);
        _photosDisplay = _photos;
        print(_photosDisplay.length);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Places List'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (!_isLoading) {
                return index == 0 ? _searchBar() : PhotoTile(photo: this._photosDisplay[index - 1]);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
            itemCount: _photosDisplay.length + 1,
          ),
        ),
      ),
    );
  }

  _searchBar() {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: TextField(
        autofocus: false,
        onChanged: (searchText) {
          searchText = searchText.toLowerCase();
          setState(() {
            _photosDisplay = _photos.where((u) {
              var fTitle = u.title.toLowerCase();
              var lText = u.text.toLowerCase();
              return fTitle.contains(searchText) || lText.contains(searchText);
            }).toList();
          });
        },
        // controller: _textController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search place',
        ),
      ),
    );
  }
}