import 'package:flutter/material.dart';
import 'package:entrada_de_dados/caraCoroa/Resultado.dart';
import 'dart:math';

class caraCoroa extends StatefulWidget {
  @override
  _caraCoroaState createState() => _caraCoroaState();
}

class _caraCoroaState extends State<caraCoroa> {

  void _exibirResultado (){

    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(resultado)
        ));

  }

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff61bd8c),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),

      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget> [

            Image.asset("imagens/caraCoroa/logo.png"),

            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("imagens/caraCoroa/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
