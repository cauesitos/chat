// ignore_for_file: prefer_const_constructors, no_logic_in_create_state



import 'package:chat/componentes/inputText.dart';
import 'package:chat/componentes/user_text.dart';
import 'package:get/get.dart';
import 'componentes/server_text.dart';
import 'package:flutter/material.dart';
import 'variaveis.dart';

void main() {
  runApp(const MaterialApp(
    home: Chat(),
  ));
}

var mensagens = [].obs;
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);
  @override
  State<Chat> createState() => _AppState();
}

class _AppState extends State<Chat> {

  void enviar() {
    Map mensagem = {
      'nome': nome.text,
      'texto': texto.text,
      'id':meuId
    };
    setState(() {
      mensagens.add(userText(text: mensagem['texto'], name: mensagem['nome']));
    });
    socket.emit('client_menssage', mensagem);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child:Obx(
              ()=> ListView.builder(
                itemCount: mensagens.length,
                itemBuilder: (context, index) {
                  var itemAtual = mensagens[index];
                  return itemAtual;
                },
              ),
            )
          ),

          //barra de input de texto e botão
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //input de texto
                inputText(
                  Text: 'mensagem',
                  Controller: texto,
                ),
                //botão de enviar
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 226, 203),
                      borderRadius:BorderRadius.all(Radius.circular(1000))
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                      ),
                      onPressed: () {
                        enviar();
                        texto.text = ' ';
                      }
                    ),
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}
