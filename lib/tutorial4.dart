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
      body: new Container(
        child: new Center(
          child: new Text("Belajar Flutter 45"),
        ),
      ),
    );
  }
}