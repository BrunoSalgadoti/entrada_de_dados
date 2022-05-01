import 'package:flutter/material.dart';

class segundaTela extends StatefulWidget {
  const segundaTela({Key? key}) : super(key: key);

  @override
  _segundaTelaState createState() => _segundaTelaState();
}

class _segundaTelaState extends State<segundaTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Tela Secundária"),
        backgroundColor: Colors.deepOrange,
      ),

      body: Container(
        padding: EdgeInsets.all(32),

        child: Column(
            children: <Widget> [
            Text("Segunda Tela!!!!!")
        ],
      ),
    ),
    );
  }
}
