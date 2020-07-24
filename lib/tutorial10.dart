import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Navigasi",
    home: MyApp1(),
  )
  );
}

class MyApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Belajar Flutter 10"),
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new ListCoba(gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIDaOzULk07HA7O_agDAEMg3S08DUKf64FQg&usqp=CAU", judul: "Data 1"),
            new ListCoba(gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIDaOzULk07HA7O_agDAEMg3S08DUKf64FQg&usqp=CAU", judul: "Data 1"),
            new ListCoba(gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIDaOzULk07HA7O_agDAEMg3S08DUKf64FQg&usqp=CAU", judul: "Data 1"),
            new ListCoba(gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIDaOzULk07HA7O_agDAEMg3S08DUKf64FQg&usqp=CAU", judul: "Data 1"),
            new ListCoba(gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIDaOzULk07HA7O_agDAEMg3S08DUKf64FQg&usqp=CAU", judul: "Data 1"),
            new ListCoba(gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIDaOzULk07HA7O_agDAEMg3S08DUKf64FQg&usqp=CAU", judul: "Data 1"),
          ],
        ),
      ),
    );
  }
}

class ListCoba extends StatelessWidget {
  final String gambar, judul;
  ListCoba({this.gambar,this.judul});
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Image(image: new NetworkImage(gambar), width: 200,),
            new Text(judul)
          ],
        ),
      ),
    );    
  }
}
