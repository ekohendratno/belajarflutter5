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

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerMoto = new TextEditingController();

  List<String> _listAgama = ["Islam","Kristen","Katolik","Hindu","Budha"];
  String _agama = "Islam";
  String _jk = "";

  void _pilihJK(String value){
    setState(() {
      _jk = value;
    });
  }

  void _pilihAgama(String value){
    setState(() {
      _agama = value;
    });
  }

  void _kirimData(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200,
        child: new Column(
          children: <Widget>[
            new Text("Nama Lengkap : ${controllerNama.text}"),
            new Text("Password : ${controllerPassword.text}"),
            new Text("Jenis Kelamin : $_jk"),
            new Text("Moto Hidup : ${controllerMoto.text}"),
            new Text("Agama : $_agama"),
            new RaisedButton(
              child: new Text("Close"),
              onPressed: ()=> Navigator.pop(context),
            ),
          ],
        ),
      ),
    );

    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Belajar Flutter 16"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            child: new Padding(
              padding: EdgeInsets.all(10),
              child: new Column(
                children: <Widget>[

                  new TextField(
                    controller: controllerNama,
                    decoration: new InputDecoration(
                      hintText: "Nama Lengkap",
                      labelText: "Nama Lengkap",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10)
                      )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top:20)),
                  new TextField(
                    controller: controllerPassword,
                    obscureText: true,
                    decoration: new InputDecoration(
                      hintText: "Passoword",
                      labelText: "Passoword",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10)
                      )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top:20)),
                  new TextField(
                    maxLines: 3,
                    controller: controllerMoto,
                    decoration: new InputDecoration(
                      hintText: "Moto Hidup",
                      labelText: "Moto Hidup",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10)
                      )
                    ),
                  ),


                  new Padding(padding: new EdgeInsets.only(top:20)),
                  new RadioListTile(
                    value: "Laki-laki",
                    title: new Text("Laki-laki"),
                    groupValue: _jk,
                    onChanged: (String value){
                      _pilihJK(value);
                    },
                    activeColor: Colors.red,
                    subtitle: new Text("Pilih ini jika Anda laki-laki"),
                  ),
                  new RadioListTile(
                    value: "Perempuan",
                    title: new Text("Perempuan"),
                    groupValue: _jk,
                    onChanged: (String value){
                      _pilihJK(value);
                    },
                    activeColor: Colors.red,
                    subtitle: new Text("Pilih ini jika Anda perempuan"),
                  ),



                  new Padding(padding: new EdgeInsets.only(top:20)),
                  new Row(
                    children: <Widget>[

                      new Text("agama"),
                      new DropdownButton(
                        value: _agama,
                        items: _listAgama.map((String value){
                          return new DropdownMenuItem(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (String value){
                          _pilihAgama(value);
                        },
                      )

                    ],
                  ),


                  new RaisedButton(
                    child: new Text("KIRIM DATA"),
                    color: Colors.red,
                    onPressed: (){
                      _kirimData();
                    },
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
