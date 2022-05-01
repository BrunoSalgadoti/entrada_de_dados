import 'package:entrada_de_dados/CampoTexto.dart';
import 'package:entrada_de_dados/Consumo_Servicos.dart';
import 'package:entrada_de_dados/Dados_em_lista.dart';
import 'package:entrada_de_dados/Future/Home_Future.dart';
import 'package:entrada_de_dados/Preco_Bitcoin.dart';
import 'package:entrada_de_dados/navegacao.dart';
import 'package:flutter/material.dart';
import 'package:entrada_de_dados/EntradaCheckbox.dart';
import 'package:entrada_de_dados/entradaRadioButton.dart';
import 'entradaSwitch.dart';
import 'package:entrada_de_dados/entrada_slider.dart';
//import 'package:entrada_de_dados/Home.dart';
import 'package:entrada_de_dados/passandoEntreTelas/passandoEntreTelas.dart';
import 'package:entrada_de_dados/caraCoroa/caraCoroa.dart';
import 'package:entrada_de_dados/Listas/Home.dart';


void main(){
  runApp (
    MaterialApp(
      //home: CampoTexto (),
      //home: EntradaCheckbox(),
      //home: EntradaRadioButton(),
      //home: EntradaSwitch(),
      //home: entrada_slider(),
      //home: navegacao(),
      //home: Home(),
      //home: passandoEntreTelas() ,
      //home: caraCoroa(),
      //home: Consumo_Servico(),
      //home: Preco_Bitcoin(),
      //home: Home(),
      //home: Home_Future(),
      home: Dados_em_lista() ,


      debugShowCheckedModeBanner: false,

    )
  );
}



