import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future getPhotos() async {
  try {
    var url = 'https://jsonplaceholder.typicode.com/photos';
    var response = await http.get(Uri.parse(url));
    return response.body;
  } catch (e) {
    print(e);
  }
}
