import 'package:flutter/material.dart';
import 'package:entrada_de_dados/passandoEntreTelas/tela2EntreTelas.dart';

class passandoEntreTelas extends StatefulWidget {


  @override
  _passandoEntreTelasState createState() => _passandoEntreTelasState();
}

class _passandoEntreTelasState extends State<passandoEntreTelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        padding: EdgeInsets.all(32),

        child: Column(
          children: <Widget> [

            RaisedButton(
                child: Text("Ir para a segunda tela"),
                onPressed: (){
                  Navigator.push(
                      context,

                      MaterialPageRoute(
                          builder: (context) => tela2EntreTelas(valor: "Bruno "),
                      )
                  );

                }
            )
          ],
        ),
      ),
    );
  }
}
