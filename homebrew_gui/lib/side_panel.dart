import 'package:flutter/material.dart';
import 'button_panel.dart';

class SidePanel extends StatelessWidget {
  SidePanel({Key? key}) : super(key: key);

  final panel = Container(
    width: 200,
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
      children: <Widget>[
        // ignore: prefer_const_constructors
        Text(
          'Menu',
          textAlign: TextAlign.center,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontFamily: 'Righteous',
            color: const Color.fromARGB(255, 107, 21, 21),
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        // ignore: prefer_const_constructors
        Divider(
          color: Colors.black,
        ),
        Expanded(flex: 9, child: ButtonPanel()),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return panel;
  }
}
