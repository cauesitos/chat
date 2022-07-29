import 'package:flutter/material.dart';

class serverText extends StatelessWidget {
  const serverText({Key? key, required this.text, required this.name})
      : super(key: key);

  final String text;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 30),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 235, 235),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  Text(text),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
