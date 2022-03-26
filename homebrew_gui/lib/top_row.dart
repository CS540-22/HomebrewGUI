import 'package:flutter/material.dart';
import 'package:homebrew_gui/search_bar.dart';
import 'package:homebrew_gui/title.dart';

class TopRow extends StatelessWidget {
  TopRow({Key? key}) : super(key: key);

  final toprow = Row(
    children: <Widget>[
      Expanded(flex: 5, child: TitleText()),
      Expanded(flex: 5, child: MySearchBarState()),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return toprow;
  }
}
