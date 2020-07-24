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
        title: new Text("Belajar Flutter 6"),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Icon(Icons.local_pizza, size: 70, color: Colors.red,),
            new Row(
              children: <Widget>[
                new Icon(Icons.donut_large, size: 70, color: Colors.red,),
                new Icon(Icons.donut_large, size: 70, color: Colors.red,),
                new Icon(Icons.donut_large, size: 70, color: Colors.red,),
              ],
            ),
            new Icon(Icons.cake, size: 70, color: Colors.red,),
          ],
        ),
      ),
    );
  }
}