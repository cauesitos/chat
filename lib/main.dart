// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:chat/componentes/inputText.dart';
import 'variaveis.dart';
import 'chat.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
  ));
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: inputText(
              Text: 'seu nome',
              Controller: nome,
            )
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 90,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 88, 209, 114),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextButton(
                  child: Text(
                    'confirmar',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
                    connect();
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
