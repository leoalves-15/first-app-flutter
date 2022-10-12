import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hiperbank/services/getPhotos.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  var _photo = [];

  Future<void> getData() async {
    var response = await getPhotos();

    setState(() {
      _photo = jsonDecode(response);
    });
  }

  @override
  Widget build(BuildContext context) {
    return _photo.isNotEmpty
        ? ListView.builder(
            itemCount: _photo.length,
            itemBuilder: (context, index) {
              return ListTile(
                minVerticalPadding: 20,
                leading: Image.network('https://picsum.photos/250?image=9'),
                title: Text('${_photo[index]['title']}'),
              );
            },
          )
        : Center(child: const CircularProgressIndicator());
  }
}
