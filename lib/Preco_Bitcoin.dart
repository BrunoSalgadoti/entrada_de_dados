import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Preco_Bitcoin extends StatefulWidget {
  const Preco_Bitcoin({Key? key}) : super(key: key);

  @override
  _Preco_BitcoinState createState() => _Preco_BitcoinState();
}

class _Preco_BitcoinState extends State<Preco_Bitcoin> {

  String _preco = "0";

  Future<void> _precoBiticoin () async {

    Uri url = Uri.parse("http://blockchain.info/ticker");
    http.Response response = await  http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);
   setState(() {
     _preco = retorno["BRL"]["buy"].toString();
   });

    //print("Resultado: " + retorno["BRL"]["buy"].toString());


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.white,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,


          children: <Widget> [

            Padding(padding: EdgeInsets.only(bottom: 20, left: 30, right: 30,),
              child:  Image.asset("imagens/bitcoin/bitcoin.png"),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(20),
                    child: Text(
                      "R\$ " + _preco,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    )
                ),],),


            Padding(padding: EdgeInsets.only(right: 100, left: 100),

              child: ElevatedButton(

                  onPressed: _precoBiticoin,

                  child: Text(
                    "Atualizar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 10,
                    padding: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),)
              ),)

          ],),
      ),
    );
  }
}
