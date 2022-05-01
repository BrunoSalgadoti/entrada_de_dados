import 'package:flutter/material.dart';

class telaContato extends StatefulWidget {
  const telaContato({Key? key}) : super(key: key);

  @override
  _telaContatoState createState() => _telaContatoState();
}

class _telaContatoState extends State<telaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green,
      ),

      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(

                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 5, 0),
                    child: Image.asset("imagens/Home/detalhe_contato.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Contato",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff61BD8C),
                      ),
                    ),),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "atendimento@consultoria.com.br",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Telefone: (82) 3296-9999",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Telefone: (82) 9 9999-9999",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
