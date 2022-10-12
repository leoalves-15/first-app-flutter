import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hiperbank/services/getPhotos.dart';

void main() async {
  var response = await getPhotos();
  var photos = jsonDecode(response);

  BuildListViwer() {
    return ListView.builder(
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return ListTile(
          // leading: Image(image: AssetImage(photos[index]['thumbnailUrl'])),
          leading: Image.network(photos[index]['thumbnailUrl']),
          title: Text('${photos[index]['title']}'),
        );
      },
    );
  }

  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Minha Primeira App'),
        ),
        body: BuildListViwer()),
  ));
}
