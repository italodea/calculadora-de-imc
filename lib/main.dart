import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),onPressed: (){},)
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(Icons.person_outline,size: 120.0,color: Colors.blueAccent,),
          TextField(keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "Peso em Kg:",
            labelStyle: TextStyle(color: Colors.blueAccent),
          ),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blueAccent, fontSize: 25.0),),
          TextField(keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Altura em cm:",
              labelStyle: TextStyle(color: Colors.blueAccent),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueAccent, fontSize: 25.0),)
        ],
      ),
    );
  }
}
