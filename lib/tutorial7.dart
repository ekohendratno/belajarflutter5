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
        title: new Text("Belajar Flutter 7"),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new CardSaya(icon:Icons.home,text: "Home 1",),
            new CardSaya(icon:Icons.home,text: "Home 2",),
            new CardSaya(icon:Icons.home,text: "Home 3",),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget{
  final IconData icon;
  final String text;

  CardSaya({this.icon,this.text});

  @override
  Widget build(BuildContext context){
    return new Card(
      child: new Column(
        children: <Widget>[
          new Icon(icon),
          new Text(text)
        ],
      ),
    );
  }
}