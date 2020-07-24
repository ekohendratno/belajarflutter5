import 'package:flutter/material.dart';

class DetailUser extends StatelessWidget{
  String nama, gambar;
  DetailUser({this.nama,this.gambar});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detail $nama"),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        child: new Center(
          child: new Image(image: NetworkImage(gambar), width: 200,),
        ),
      ),
    );
  }
}