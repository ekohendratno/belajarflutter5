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
  List dataJson;

  Future<String> ambildata() async{
    http.Response  hasil = await http.get(
      Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"), headers: {
        "Accept": "application/json"
    }
    );

    this.setState((){
      dataJson = json.decode( hasil.body );
    });
  }


  @override
  void initState() {
    this.ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Belajar Flutter 11"),
      ),
      body: new Container(
        child: new ListView.builder(
          itemCount: dataJson == null ? 0 : dataJson.length,
          itemBuilder: (context,i){
            return new Card(
              child: new Container(
                padding: new EdgeInsets.all(20),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      dataJson[i]["title"], 
                      style: TextStyle(fontSize: 20, color: Colors.blue)
                    ),
                    new Text(dataJson[i]["body"])
                  ],
                ),
              ),
            );
          },


        ),
      ),
    );
  }
}

