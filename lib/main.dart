import 'package:flutter/material.dart';
import 'package:hiperbank/pages/home.dart';
import 'package:hiperbank/pages/camera.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue[700],
            fixedColor: Colors.white,
            unselectedItemColor: Colors.black,
            currentIndex: _selectedItem,
            onTap: (selected) {
              setState(() {
                _selectedItem = selected;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera')
            ]),
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Text('Minha Applicação'),
        ),
        body: IndexedStack(
          index: _selectedItem,
          children: <Widget>[
            Home(),
            Camera(),
          ],
        ),
      ),
    );
  }
}
