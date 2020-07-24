import 'package:flutter/material.dart';
import 'tutorial13/detail.dart';

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
  String nama = "Eko Hendratno";
  String email = "eko.hendratno@gmail.com";
  String gambar = "https://avatars3.githubusercontent.com/u/16983354?s=460&u=5c39d52b10d344296781687835fe1e581be2f7f8&v=4";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Belajar Flutter 13"),
      ),
      drawer: new Drawer(        
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(nama),
              accountEmail: new Text(email),
              currentAccountPicture: new GestureDetector(
                onTap: ()=> Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context)=> new DetailUser(nama: nama, gambar: gambar,)
                  )
                ),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(gambar),
                ),
              ),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage("https://i1.wp.com/assets.kopas.id/2020/06/Apple-iOS-14-640x360-1.png"),
                      fit: BoxFit.cover
                  ),
              ),

            ),
            new ListTile(
              title: new Text("Setting"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            )
          ],
        ),
      ),
      body: new Container(

      ),
    );
  }
}

