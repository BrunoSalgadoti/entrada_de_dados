import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Consumo_Servico extends StatefulWidget {
  const Consumo_Servico({Key? key}) : super(key: key);

  @override
  _Consumo_ServicoState createState() => _Consumo_ServicoState();
}

class _Consumo_ServicoState extends State<Consumo_Servico> {

  TextEditingController? controllerCEP = TextEditingController();
  TextEditingController? controllerLogradouro = TextEditingController();
  String _resultado = "Resultado";
  String logradouro = "";

  _recuperarCep () async {


    //String url = "http://viacep.com.br/ws/01311300/json/";
    http.Response response;
    String _cep = controllerCEP!.text;

    Uri urlCep                    = Uri.parse("http://viacep.com.br/ws/${_cep}/json/");
    response                      = await http.get(urlCep);
    Map<String, dynamic> retorno  = json.decode(response.body);



    String complemento    = retorno["complemento"];
    String bairro         = retorno["bairro"];
    String localidade     = retorno["localidade"];

    setState(() {
      logradouro     = retorno["logradouro"];
      controllerLogradouro!.text = logradouro;
      _resultado = "Logradouro: ${logradouro}, "
          "\nComplemento: ${complemento},"
          "\nBairro: ${bairro},"
          "\nLocalidade: ${localidade}";

      //_resultado = response.body;
    });

    // print("Resposta: logradouro ${logradouro} \ncomplemento: ${complemento} "
    //   "\nbairro: ${bairro}  \nlocalidade: ${localidade}");

    /*
    print("Resposta: " + response.body);
    print("Resposta: " + response.statusCode.toString());
    */
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Cosumo serviço"),
      ),

      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [

            Padding(padding: EdgeInsets.all(20),

              child:  TextField(
                maxLength: 8,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "CEP",
                  border: OutlineInputBorder() ,
                ),
                controller: controllerCEP,
              ),

            ),

            RaisedButton(
                child: Text("clique aqui"),
                onPressed:  _recuperarCep
            ),

            Padding(padding: EdgeInsets.only(top: 20, left: 20),
              child:  Text(_resultado),
            ),

            TextField(
              maxLength: 100,
              controller: controllerLogradouro,
              keyboardType: TextInputType.text,
              enabled: logradouro == "",
              decoration: InputDecoration(
                labelText: "Logradouro",
                border: OutlineInputBorder() ,
              ),

            ),

          ],),
      ),
    );
  }
}
