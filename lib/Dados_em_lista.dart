import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Post.dart';

class Dados_em_lista extends StatefulWidget {
  const Dados_em_lista({Key? key}) : super(key: key);

  @override
  _Dados_em_listaState createState() => _Dados_em_listaState();
}

class _Dados_em_listaState extends State<Dados_em_lista> {

  String urlBase = "https://jsonplaceholder.typicode.com";

  Future<List<Post>> _recuperarPostagem() async{

    Uri  _url = Uri.parse(urlBase + "/posts");
    http.Response response = await http.get(_url);

    var dadosJson = json.decode(response.body);

    List<Post> postagens = [];

    for (var post in dadosJson) {
      //print("Post: " + post["title"]);
      Post p = Post(post["userId"],post["id"], post["title"], post["body"]);
      postagens.add( p );

    }

    return postagens;
  }
  _post () async{

    Uri _url = Uri.parse(urlBase + "/posts");
    var corpo = json.encode(
        {
          "userId": 500,
          "id": null,
          "title": "Título",
          "body": "Corpo da postagem"
        }
    );
    http.Response response = await http.post(_url,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
        body: corpo );

    print("resposta: ${response.statusCode}");
    print("Resposta: ${response.body}");

  }
  _put (){

  }
  _path (){

  }
  _delete (){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Consulmo de serviço avançado"),
      ),

      body: Container(
        padding: EdgeInsets.all(16),

        child: Column(

          children: <Widget> [

            Row(
              children: <Widget> [
                RaisedButton(
                  child: Text("Salvar"),
                  onPressed: _post,
                ),

                RaisedButton(
                  child: Text("Atualizar"),
                  onPressed: _put,
                ),

                RaisedButton(
                  child: Text("Deletar"),
                  onPressed: _delete,
                ),

                RaisedButton(
                  child: Text("Atu.Path"),
                  onPressed: _path,
                ),

              ],),

            Expanded(child:

            FutureBuilder<List<Post>>(

                future: _recuperarPostagem(),
                builder: (context, snapshot){

                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                      break;
                    case ConnectionState.active:
                    case ConnectionState.done:
                      if( snapshot.hasError ){
                        //print("Lista: Erro ao carregar");
                        return Text("Lista: Erro ao carregar");
                      } else {
                        //print("Lista: carregou");
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, indice){
                              List<Post> lista = snapshot.data!;
                              Post post = lista[indice];

                              return ListTile(
                                title: Text(post.title),
                                subtitle: Text(post.body),
                              );

                            }
                        );

                      }

                  }


                }

            ),)


          ],




        ),
      ),
    );
  }
}
