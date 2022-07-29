// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class inputText extends StatelessWidget {
  const inputText({
    Key? key,
    required this.Text,
    this.Controller,
  }) : super(key: key);

  final String Text;
  final Controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 90,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 226, 203),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: TextField(
          controller: Controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: Text,
          ),
        ),
      )
    );
  }
}
