import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        leading: new Icon(Icons.home),
        title: new Text("Belajar Flutter 5"),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ),
    );
  }
}