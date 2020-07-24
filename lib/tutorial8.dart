import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Navigasi",
    home: MyApp1(),
    routes: <String, WidgetBuilder>{
      "/MyApp1" : (BuildContext context) => new MyApp1(),
      "/MyApp2" : (BuildContext context) => new MyApp2(),
    },
  )
  );
}

class MyApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MyApp 1"),
      ),
      body: new Container(
        child: new Center(
          child: new IconButton(
            icon: new Icon(Icons.headset),
            onPressed: (){
              Navigator.pushNamed(context, "/MyApp2");
            }),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MyApp 2"),
      ),
      body: new Container(
        child: new Center(
          child: new IconButton(
              icon: new Icon(Icons.headset),
              onPressed: (){
                Navigator.pushNamed(context, "/MyApp1");
              }),
        ),
      ),
    );
  }
}