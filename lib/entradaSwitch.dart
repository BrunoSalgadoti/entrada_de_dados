import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),

      body: Container(
        child: Row(
            children: <Widget> [

              Switch(
                  value: _escolhaUsuario,
                  onChanged: (bool valor){
                    setState(() {
                      _escolhaUsuario = valor;
                    });
                  }

              ),
              Text ("Receber notificações?")
            ]
        ),
      ),
    );
  }
}
