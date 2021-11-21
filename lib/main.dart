import 'package:flutter/material.dart';
import 'pages/dicepages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[400],
        appBar: AppBar(
          title: Center(child: Text('Dice App')),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    );
  }
}
