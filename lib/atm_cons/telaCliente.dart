import 'package:flutter/material.dart';

class telaCliente extends StatefulWidget {
  const telaCliente({Key? key}) : super(key: key);

  @override
  _telaClienteState createState() => _telaClienteState();
}

class _telaClienteState extends State<telaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text("Cliente"),
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
                    child: Image.asset("imagens/Home/detalhe_cliente.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Cliente",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffb9c941),
                      ),
                    ),),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset("imagens/Home/cliente1.png")
              ),
              Text(
                "Empresa de software",
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child:  Image.asset("imagens/Home/cliente2.png")
              ),
              Text(
                "Empresa auditoria",
              ),

            ],
          ),
        ),
      ),
    );
  }
}
