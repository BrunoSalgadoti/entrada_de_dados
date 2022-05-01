import 'package:flutter/material.dart';
import 'package:entrada_de_dados/atm_cons/telaEmpresa.dart';
import 'package:entrada_de_dados/atm_cons/telaServico.dart';
import 'package:entrada_de_dados/atm_cons/telaContato.dart';
import 'package:entrada_de_dados/atm_cons/telaCliente.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirEmpresa () {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => telaEmpresa()));
  }

  void _abrirServico () {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => telaServico()));
  }

  void _abrirCliente () {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => telaCliente()));
  }

  void _abrirContato () {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => telaContato()));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),

      body: Container(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget> [
            Image.asset("imagens/Home/logo.png"),

            Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("imagens/Home/menu_empresa.png"),
                    ),

                    GestureDetector(
                      onTap: _abrirServico,
                      child: Image.asset("imagens/Home/menu_servico.png"),
                    ),

                  ],)
            ),

            Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    GestureDetector(
                      onTap: _abrirCliente,
                      child: Image.asset("imagens/Home/menu_cliente.png"),
                    ),

                    GestureDetector(
                      onTap: _abrirContato,
                      child: Image.asset("imagens/Home/menu_contato.png"),
                    ),

                  ],)
            ),
          ],

        ),
      ),
    );
  }
}
