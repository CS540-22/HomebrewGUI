import 'package:flutter/material.dart';
import 'globals.dart';

class ButtonPanel extends StatelessWidget {
  final buttons = Container(
    child: Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          style: style1,
          child: const Text('Download Packages (Current)'),
        ),

        const SizedBox(
          height: 10
        ), 

        ElevatedButton(
          onPressed: () {},
          style: style1,
          child: const Text('Common Packages (Page)'),
        ),
        const SizedBox(
          height: 10
        ), 

        ElevatedButton(
          onPressed: () {},
          style: style1,
          child: const Text('Updates'),
        ),

        const SizedBox(
          height: 10
        ), 

        ElevatedButton(
          onPressed: () {},
          style: style1,
          child: const Text('Doctor'),
        ),

        const SizedBox(
          height: 10
        ), 

        ElevatedButton(
          onPressed: () {},
          style: style1,
          child: const Text('Uninstall'),
        ),

        const SizedBox(
          height: 10
        ), 

        ElevatedButton(
          onPressed: () {},
          style: style1,
          child: const Text('Help'),
        ),

        const SizedBox(
          height: 10
        ), 
        
        ElevatedButton(
          onPressed: () {},
          style: style1,
          child: const Text('Documentation'),
        ),
      ],
    ),
  );

  ButtonPanel({Key? key}) : super(key: key);
  // const ButtonPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buttons;
  }
}
