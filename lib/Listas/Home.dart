import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens () {

    _itens.clear();

    for(int i=0; i<=10; i++){

      Map<String, dynamic> item = Map();
      item["titulo"] = "Título ${i} Lorem ipsum dolor sit amet.";
      item["descricao"] = "Descrição ${i} Lorem ipsum dolor sit amet.";
      _itens.add( item );

    }

  }
  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(

      appBar: AppBar(
        title: Text("Listas"),
      ),

      body: Container(
          padding: EdgeInsets.all(20),

          child: ListView.builder(
              itemCount: _itens.length,
              itemBuilder:  (context, indice){

              // Map<String, dynamic> item = _itens[indice];
               //print( item["titulo"] );
               // print("item  ${ _itens[indice].toString()}");

                return ListTile(
                  onTap: (){
                    print("On Tap Preess ${indice}");
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text(_itens[indice]["titulo"]),
                            titlePadding: EdgeInsets.all(20),
                            titleTextStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                            content: Text(_itens[indice]["descricao"]),
                            actions: <Widget> [
                              FlatButton(
                               color: Colors.red,
                                  onPressed: (){
                                    print("NÃO");
                                 Navigator.pop(context);
                                  },
                                  child: Text(
                                      "Não",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                              ),
                              FlatButton(
                                  color: Colors.blue,
                                  onPressed: (){
                                    print("SIM");
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                      "Sim",
                                      style: TextStyle(
                                      color: Colors.white,
                                  )
                              ),
                              )],
                            contentPadding: EdgeInsets.all(20),
                          );
                        });
                  },
                  onLongPress: (){
                    print("On Long Preess");
                  },
                  title: Text ( _itens[indice]["titulo"] ),
                  subtitle: Text( _itens[indice]["descricao"] ),
                );
              }
          )
      ),
    );
  }
}
