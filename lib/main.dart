import 'package:flutter/material.dart';
import 'package:hiperbank/services/getPhotos.dart';

// List<String>.generate(1000, (Item) => "Item $i");

void main() async {
  var photos = await getPhotos();
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Minha Primeira App'),
        ),
        body: Text(photos)),
  ));
}
