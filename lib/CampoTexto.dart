import 'package:flutter/material.dart';


class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
        
      body: Column(

          children: <Widget>[

        Padding(
        padding: EdgeInsets.all(32),

          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Digite um valor"
            ),
            //enabled: true,
            maxLength: 5,
            style: TextStyle(
              fontSize: 25,
              color:Colors.deepOrange,
            ),
            onSubmitted: (String texto2){
              print("Valor digitado:" + texto2);
            },
            controller:_textEditingController ,
          ),
    ),

            RaisedButton(
              child: Text("Salvar"),
              color: Colors.deepOrange,
              onPressed: (){
                print("Valor digitado:" + _textEditingController.text);
              } ,
            )
          ]
    ) ,
    );
  }
}
