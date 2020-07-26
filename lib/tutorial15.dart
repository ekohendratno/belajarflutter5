import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

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

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Belajar Flutter 15"),
      ),
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomLeft,
            colors: [Colors.red,Colors.yellow,Colors.green]
          )
        ),
        child: new PageView.builder(
          controller: new PageController(viewportFraction: 0.8),
          itemCount: namanama.length,
          itemBuilder: (BuildContext context, int i){
            final String gambar = namanama[i]["gambar"];

            return new Padding(
              padding: new EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 20
              ),
              child: new Material(
                borderRadius: new BorderRadius.circular(15),
                elevation: 8,
                child: new Stack(
                  fit: StackFit.expand,
                  children: <Widget>[

                    new Hero(
                      tag: gambar,
                      child: new Material(
                        child: new InkWell(
                          onTap: ()=>Navigator.of(context).push(
                              new MaterialPageRoute(
                                  builder: (BuildContext context) => HalamanSelanjutnya(gambar: gambar,)
                              )
                          ),
                          child: Image.asset("img/$gambar", fit: BoxFit.cover,),
                        ),
                      ),
                    )

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

class HalamanSelanjutnya extends StatefulWidget{

  final String gambar;

  HalamanSelanjutnya({this.gambar});

  @override
  _HalamanSelanjutnyaState createState() => _HalamanSelanjutnyaState();
}

class _HalamanSelanjutnyaState extends State<HalamanSelanjutnya> {

  Color warna = Colors.grey;


  void _select(ModelA value) {
    setState(() {
      warna = value.warna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Detail"),
        actions: <Widget>[
          PopupMenuButton<ModelA>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return _list.map((ModelA choice) {
                return PopupMenuItem<ModelA>(
                  value: choice,
                  child: Text(choice.text),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              gradient: new RadialGradient(
                center: Alignment.center,
                colors: [
                  Colors.blue,
                  warna,
                  Colors.blue.withOpacity(0.9)
                ],
              ),
            ),
          ),
          new Center(
            child: new Hero(
              tag: widget.gambar,
              child: new ClipOval(
                child: new SizedBox(
                  width: 200,
                  height: 200,
                  child: new Material(
                    child: new InkWell(
                      onTap: ()=> Navigator.of(context).pop(),
                      child: Image.asset("img/${widget.gambar}", fit: BoxFit.cover,),
                    ),
                  ),
                )
              ),
            ),
          )
        ],
      ),
    );
  }

}


class ModelA{
  final String text;
  final Color warna;
  const ModelA({this.text, this.warna});
}


List<ModelA> _list = const <ModelA>[
  const ModelA(text : "Warna 1", warna : Colors.red),
  const ModelA(text : "Warna 2", warna : Colors.green),
  const ModelA(text : "Warna 3", warna : Colors.blue),
];
