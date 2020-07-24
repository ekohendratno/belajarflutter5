import 'package:flutter/material.dart';

class Halaman2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: EdgeInsets.all(20)),
            new Text("Halaman 2", style: new TextStyle(fontSize: 30),),
            new Padding(padding: new EdgeInsets.all(20)),
            new Image(image: new NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIDaOzULk07HA7O_agDAEMg3S08DUKf64FQg&usqp=CAU"), width: 200,)
          ],
        ),
      ),
    );
  }
}
