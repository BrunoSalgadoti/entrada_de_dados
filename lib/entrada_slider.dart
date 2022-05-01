import 'dart:ffi';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class entrada_slider extends StatefulWidget {
  const entrada_slider({Key? key}) : super(key: key);

  @override
  _entrada_sliderState createState() => _entrada_sliderState();
}

class _entrada_sliderState extends State<entrada_slider> {

  double _valor = 0;
  String label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Entrada Slider"),
      ),

      body: Container(
          padding: EdgeInsets.all(60),

          child: Column(

              children: <Widget> [

                Slider(
                  value: _valor,
                  min: 0,
                  max: 10,
                  label: "Valor : " + label,
                  divisions: 5,
                  activeColor: Colors.red,
                  inactiveColor: Colors.amber,
                  onChanged: (double novoValor ){
                    setState(() {
                      _valor = novoValor;
                      label = novoValor.toString();
                    });
                    //print("Valor selecionado" + novoValor.toString() );
                  },
                ),

                RaisedButton(
                    child: Text(
                        "Salvar",
                        style: TextStyle(
                          fontSize: 20,
                        )
                    ),
                    onPressed: (){
                      print("Valor selecionado" + _valor.toString());
                    }
                ),
              ]
          )
      ),
    );
  }
}
