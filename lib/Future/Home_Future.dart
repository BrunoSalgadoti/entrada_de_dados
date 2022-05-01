import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Home_Future extends StatefulWidget {
  const Home_Future({Key? key}) : super(key: key);

  @override
  _Home_FutureState createState() => _Home_FutureState();
}

class _Home_FutureState extends State<Home_Future> {

  Future<Map> _recuperarPreco() async {

    Uri url = Uri.parse("http://blockchain.info/ticker");
    http.Response response = await http.get(url);
    return json.decode( response.body);

  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
        future: _recuperarPreco(),
        builder: (context,snapshot){

          String resultado = "";

          switch(snapshot.connectionState){
            case ConnectionState.none :
              print("Conexão none");
              break;
            case ConnectionState.waiting :
              print("Conexão Waiting");
              resultado = "Carregando...";
              break;
            case ConnectionState.active:
            case ConnectionState.done :
              print("Conexão Done");

              if( snapshot.hasError){
                resultado = "Erro carregando dasdos..";
              }else {
                double valor = snapshot.data!["BRL"] ["buy"];
                resultado = "Preço do bitcoin:  ${valor.toString()}";

              }
              break;
          }

          return Center(
            child: Text( resultado ),
          );
        }

    );
  }
}
