import 'package:flutter/material.dart';
import 'tutorial9/halamana1.dart' as hal1;
import 'tutorial9/halamana2.dart' as hal2;
import 'tutorial9/halamana3.dart' as hal3;

void main() {
  runApp(new MaterialApp(
    title: "Navigasi",
    home: MyApp1(),
  )
  );
}

class MyApp1 extends StatefulWidget{
  @override
  _MyApp1State createState() => new _MyApp1State();
}

class _MyApp1State extends State<MyApp1> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Daftar Elektronik"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),),
            new Tab(icon: new Icon(Icons.headset),),
            new Tab(icon: new Icon(Icons.backup),),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          new hal1.Halaman1(),
          new hal2.Halaman2(),
          new hal3.Halaman3(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),),
            new Tab(icon: new Icon(Icons.headset),),
            new Tab(icon: new Icon(Icons.backup),),
          ],
        ),
      ),
    );
    
  }
  
}