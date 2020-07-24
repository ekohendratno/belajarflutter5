import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' show json;

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
  String text = "";

  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Belajar Flutter 12"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controller,
              decoration: new InputDecoration(
                hintText: "Tulis disini"
              ),
              onSubmitted: (String str){setState(() {
                text = str;
                controller.text = str;
              });
              },
            )
          ],
        ),
      ),
    );
  }
}

