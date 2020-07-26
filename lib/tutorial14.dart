import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MaterialApp(
    title: "Navigasi",
    home: MyApp1(),
  ));
}

class MyApp1 extends StatefulWidget {
  @override
  _MyApp1 createState() => new _MyApp1();
}

class _MyApp1 extends State<MyApp1> {
  List<Container> daftar = new List();
  var namanama = [
    {"nama": "Nama 1", "gambar": "gambar1.jpg"},
    {"nama": "Nama 2", "gambar": "gambar2.jpg"},
    {"nama": "Nama 3", "gambar": "gambar3.jpg"},
    {"nama": "Nama 4", "gambar": "gambar4.jpg"},
    {"nama": "Nama 5", "gambar": "gambar5.jpg"},
    {"nama": "Nama 6", "gambar": "gambar6.jpg"},
    {"nama": "Nama 7", "gambar": "gambar7.jpg"},
    {"nama": "Nama 8", "gambar": "gambar8.jpg"},
    {"nama": "Nama 9", "gambar": "gambar9.jpg"},
  ];

  _buatList() async {
    for (var i = 0; i < namanama.length; i++) {
      final String nama = namanama[i]["nama"];
      final String gambar = namanama[i]["gambar"];

      daftar.add(new Container(
        padding: new EdgeInsets.all(10),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Hero(
                tag: nama,
                child: new Material(
                  child: new InkWell(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new Detail(
                                  nama: nama,
                                  gambar: gambar,
                                ))),
                    child: new Image.asset(
                      "img/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              new Padding(padding: new EdgeInsets.all(10)),
              new Text(
                nama,
                style: new TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ));
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

class Detail extends StatelessWidget {
  final String nama, gambar;

  Detail({this.nama, this.gambar});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240,
            child: new Hero(
              tag: nama,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset(
                    "img/$gambar",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(10),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(nama,
                          style:
                              new TextStyle(fontSize: 20, color: Colors.blue)),
                      new Text("$nama@gmail.com",
                          style:
                              new TextStyle(fontSize: 20, color: Colors.blue)),
                    ],
                  ),
                ),
                new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.red,
                    ),
                    new Text(
                      "12",
                      style: new TextStyle(fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(10),
            child: new Row(
              children: <Widget>[
                new ItemIconText(icon: Icons.call, nama: "Call"),
                new ItemIconText(icon: Icons.message, nama: "Message"),
                new ItemIconText(icon: Icons.photo, nama: "Photo"),
              ],
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(10),
            child: new Card(
              child: new Padding(
                padding: EdgeInsets.all(10),
                child: new Text(
                  "Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak.",
                  style: new TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ItemIconText extends StatelessWidget {
  final String nama;
  final IconData icon;
  ItemIconText({this.icon, this.nama});
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50,
            color: Colors.blue,
          ),
          new Text(
            nama,
            style: new TextStyle(fontSize: 18, color: Colors.blue),
          )
        ],
      ),
    );
  }
}
