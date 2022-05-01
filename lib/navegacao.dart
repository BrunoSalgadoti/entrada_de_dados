import 'package:entrada_de_dados/segundaTela.dart';
import 'package:flutter/material.dart';

class navegacao extends StatefulWidget {
  const navegacao({Key? key}) : super(key: key);

  @override
  _navegacaoState createState() => _navegacaoState();
}

class _navegacaoState extends State<navegacao> {
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
                          builder: (context) => segundaTela()
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
