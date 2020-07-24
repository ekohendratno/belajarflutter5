import 'package:flutter/material.dart';

class Halaman3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: EdgeInsets.all(20)),
            new Text("Halaman 3", style: new TextStyle(fontSize: 30),),
            new Padding(padding: new EdgeInsets.all(20)),
            new Icon(Icons.backup, size: 90,)
          ],
        ),
      ),
    );
  }
}
