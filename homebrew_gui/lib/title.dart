import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  TitleText({Key? key}) : super(key: key);

  final title = Align(
    alignment: Alignment.topLeft,
    child: Row(
      children: <Widget>[
        Image.asset('graphics/homebrew.png'),
        const Text(
          'Homebrew',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Righteous',
              color: Color.fromARGB(255, 107, 21, 21),
              fontSize: 40,
              fontWeight: FontWeight.w400,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(.5, .5),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ]),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return title;
  }
}
