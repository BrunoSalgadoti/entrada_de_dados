import 'package:flutter/material.dart';

class tela2EntreTelas extends StatefulWidget {

  String valor;

  tela2EntreTelas({required this.valor});

  @override
  _tela2EntreTelasState createState() => _tela2EntreTelasState();
}

class _tela2EntreTelasState extends State<tela2EntreTelas> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Passando DADOS Entre telas"),
        backgroundColor: Colors.cyan,
      ),

      body: Container(
        padding: EdgeInsets.all(32),

        child: Column(
          children: <Widget> [
            Text("Segunda Tela! Valor passado: ${widget.valor}" )
          ],
        ),
      ),
    );
  }
}
