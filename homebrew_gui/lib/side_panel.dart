import 'package:flutter/material.dart';

class SidePanel extends StatelessWidget {
  SidePanel({Key? key}) : super(key: key);

  final panel = Container(
    alignment: Alignment.topLeft,
    margin: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 196, 196, 196),
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0)),
    ),
    child: Column(
      children: const <Widget>[
        Text(
          'Menu',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Righteous',
            color: Color.fromARGB(255, 107, 21, 21),
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        Divider(
          color: Colors.black,
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return panel;
  }
}
