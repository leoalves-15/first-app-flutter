import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

//fetch
//Future<Photo> getPhotos() async {
//
Future getPhotos() async {
  try {
    var url = 'https://jsonplaceholder.typicode.com/photos';
    var response = await http.get(Uri.parse(url));
    return response.body;
    // print(response);
    // var responseJson = jsonDecode(response.body);
    // var photos = Photo.fromJson(responseJson);

    // return photos;
  } catch (e) {
    print(e);
  }
}

// class Photo {
//   final int albumId;
//   final int id;
//   final String title;
//   final String url;
//   final String thumbnailUrl;

//   Photo(
//       {required this.albumId,
//       required this.id,
//       required this.title,
//       required this.url,
//       required this.thumbnailUrl});

//   factory Photo.fromJson(Map responseJson) {
//     return Photo(
//         albumId: responseJson['albumId'],
//         id: responseJson['id'],
//         title: responseJson['title'],
//         url: responseJson['url'],
//         thumbnailUrl: responseJson['thumbnailUrl']);
//   }
// }
