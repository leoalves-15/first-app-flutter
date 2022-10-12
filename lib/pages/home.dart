import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hiperbank/services/getPhotos.dart';

// BuildListViwer() async {
//   var response = await getPhotos();
//   var photos = jsonDecode(response);
//   return ListView.builder(
//     itemCount: photos.length,
//     itemBuilder: (context, index) {
//       return ListTile(
//         leading: Image.network(photos[index]['thumbnailUrl']),
//         title: Text('${photos[index]['title']}'),
//       );
//     },
//   );
// }

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
                leading: Image.network(_photo[index]['thumbnailUrl']),
                title: Text('${_photo[index]['title']}'),
              );
            },
          )
        : Center(child: const CircularProgressIndicator());
  }
}
