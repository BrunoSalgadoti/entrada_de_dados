import 'package:flutter/material.dart';


class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool? _isComidaBrasileira = false;
  bool? _isComidaMexicana = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),

      body: Container(
        child: Column(
          children: <Widget> [

            CheckboxListTile(
                title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida do mundo"),
                activeColor: Colors.red,
                secondary: Icon(Icons.add_box),
                selected: _isComidaBrasileira!,
                value: _isComidaBrasileira,
                onChanged: ( bool? valor){
                  setState(() {
                    _isComidaBrasileira = valor;
                  });
                }

              /*Text("Comida Brasileira"),
            Checkbox(
            value: _isComidaBrasileira,
            onChanged: (bool? valor ){
              print("Checkbox: " + valor.toString());
              setState(() {
                _isComidaBrasileira = valor;
              });*/
            ),

            CheckboxListTile(
                title: Text("Comida Mexicana"),
                subtitle: Text("A comida mais apimentada do mundo"),
                activeColor: Colors.red,
                secondary: Icon(Icons.add_box),
                selected: _isComidaMexicana!,
                value: _isComidaMexicana,
                onChanged: ( bool? valor){
                  setState(() {
                    _isComidaMexicana = valor;
                  });
                }
            ),
            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
                 ),
                onPressed: (){
                print(   "Comida Brasileira: "  + _isComidaBrasileira.toString() +
                    "\nComida Mexicana: " + _isComidaMexicana.toString());
                }
            )
          ],
        ),
      ),


    );
  }
}
