import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter/material.dart';
import 'componentes/server_text.dart';
import 'chat.dart';

late IO.Socket socket;
var texto = TextEditingController();
var nome = TextEditingController();
var server_msg;

void connect() {
  socket = IO.io('https://serverchat.caueabade.repl.co', <String, dynamic>{
    "transports": ["websocket"],
    "autoConnect": false,
  });
  
  socket.connect();
  socket.onConnect((data) => print('conectado'));

  socket.on('server_menssage', ((data) {
    mensagens.add(serverText(text: data['texto'], name: data['nome']));
  }));
}
