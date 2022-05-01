import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;
  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    //print(widget.valor);
    //Variavel para mudar a figura na tela do resultado
    var caminhoImagem = "imagens/caraCoroa/moeda_cara.png";

    if(widget.valor == "cara"){
      caminhoImagem = "imagens/caraCoroa/moeda_cara.png";
    }else{
      caminhoImagem = "imagens/caraCoroa/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd8c),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),

      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget> [

            Image.asset(caminhoImagem),

            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("imagens/caraCoroa/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
