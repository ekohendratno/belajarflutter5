import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Navigasi",
    home: MyApp1(),
  )
  );
}

class MyApp1 extends StatefulWidget{
  @override
  _MyApp1 createState() => new _MyApp1();
}

class _MyApp1 extends State<MyApp1>{

  List<Container> daftar = new List();
  var namanama = [
    {"nama":"Nama 1", "gambar" : "gambar1.jpg"},
    {"nama":"Nama 2", "gambar" : "gambar2.jpg"},
    {"nama":"Nama 3", "gambar" : "gambar3.jpg"},
    {"nama":"Nama 4", "gambar" : "gambar4.jpg"},
    {"nama":"Nama 5", "gambar" : "gambar5.jpg"},
    {"nama":"Nama 6", "gambar" : "gambar6.jpg"},
    {"nama":"Nama 7", "gambar" : "gambar7.jpg"},
    {"nama":"Nama 8", "gambar" : "gambar8.jpg"},
    {"nama":"Nama 9", "gambar" : "gambar9.jpg"},
  ];


  _buatList() async{
    for(var i=0; i< daftar.length; i++){
      final String nama = namanama[i]["nama"];
      //final String gambar = namanama[i]["gambar"];

      daftar.add(
        new Container(
          padding: new EdgeInsets.all(10),
          child: new Card(
            child: new Column(
              children: <Widget>[
               // new Image.asset("img/$gambar", fit: BoxFit.cover,),
                new Text(nama, style: new TextStyle(fontSize: 18),),
                new Padding(padding: new EdgeInsets.all(10))
              ],
            ),
          ),
        )
      );
    }
  }

  @override
  void initState() {
    _buatList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Belajar Flutter 14"),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftar,
      ),
    );
  }
}

