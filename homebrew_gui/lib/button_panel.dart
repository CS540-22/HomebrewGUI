import 'package:flutter/material.dart';
import 'globals.dart';

class ButtonPanel extends StatelessWidget {


  final buttons = Container(
    child: Column(



      children: <Widget>[
        
        

        ElevatedButton(
          onPressed: () { },
          child: 
            const Text('Download Packages (Current)'),
        ),

        ElevatedButton(
          onPressed: () { },
          child: 
            const Text('Common Packages (Page)'),
        ),
        ElevatedButton(
          onPressed: () { },
          style: style1,
          child: 
            const Text('Updates'),
        ),
        ElevatedButton(
          onPressed: () { },
          child: 
            const Text('Doctor'),
        ),
        ElevatedButton(
          onPressed: () { },
          child: 
            const Text('Uninstall'),
        ),
                ElevatedButton(
          onPressed: () { },
          child: 
            const Text('Help'),
        ),
                ElevatedButton(
          onPressed: () { },
          child: 
            const Text('Documentation'),
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