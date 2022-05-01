import 'package:flutter/material.dart';

class telaServico extends StatefulWidget {
  const telaServico({Key? key}) : super(key: key);

  @override
  _telaServicoState createState() => _telaServicoState();
}

class _telaServicoState extends State<telaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.green,
      ),

      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Row(

                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 5, 0),
                    child: Image.asset("imagens/Home/detalhe_servico.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Serviços",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff19d1c8),
                      ),
                    ),),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Consultoria",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Cálculo de preços",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Acompamhamento de projetos",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
