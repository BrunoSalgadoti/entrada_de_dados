import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class telaEmpresa extends StatefulWidget {
  const telaEmpresa({Key? key}) : super(key: key);

  @override
  _telaEmpresaState createState() => _telaEmpresaState();
}

class _telaEmpresaState extends State<telaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),

      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(

                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 5, 0),
                    child: Image.asset("imagens/Home/detalhe_empresa.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Sobre a empresa",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffEC7148),
                      ),
                    ),),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                    "O PL informou nesta terça-feira, 23, que o presidente Jair "
                        "Bolsonaro se filiará ao partido no próximo dia 30. O evento "
                        "será às 10h30, em Brasília, no complexo Brasil 21. A data foi "
                        "definida nesta tarde em uma reunião entre o chefe do Executivo "
                        "e o presidente nacional da sigla, Valdemar Costa Neto. O encontro"
                        " ocorreu no Palácio do Planalto e não estava na agenda do presidente. "
                        "A filiação de Bolsonaro ao PL estava marcada para o dia 22, mas foi "
                        "adiada. Segundo o partido, a decisão ocorreu em comum acordo “após"
                        " intensa troca de mensagens” entre o mandatário e Costa Neto. Na semana "
                        "passada, o presidente da sigla se reuniu com os dirigentes estaduais para"
                        " discutir o assunto. Segundo o senador Jorginho Mello (PL-SC) relatou à Jovem"
                        " Pan, na ocasião, o partido deu “carta branca” para que Costa Neto aparasse "
                        "“todas as arestas” e acertasse a filiação de Bolsonaro."
                        "\n \n O PL informou nesta terça-feira, 23, que o presidente Jair "
                        "Bolsonaro se filiará ao partido no próximo dia 30. O evento "
                        "será às 10h30, em Brasília, no complexo Brasil 21. A data foi "
                        "definida nesta tarde em uma reunião entre o chefe do Executivo "
                        "e o presidente nacional da sigla, Valdemar Costa Neto. O encontro"
                        " ocorreu no Palácio do Planalto e não estava na agenda do presidente. "
                        "A filiação de Bolsonaro ao PL estava marcada para o dia 22, mas foi "
                        "adiada. Segundo o partido, a decisão ocorreu em comum acordo “após"
                        " intensa troca de mensagens” entre o mandatário e Costa Neto. Na semana "
                        "passada, o presidente da sigla se reuniu com os dirigentes estaduais para"
                        " discutir o assunto. Segundo o senador Jorginho Mello (PL-SC) relatou à Jovem"
                        " Pan, na ocasião, o partido deu “carta branca” para que Costa Neto aparasse "
                        "“todas as arestas” e acertasse a filiação de Bolsonaro.",
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
