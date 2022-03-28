import 'package:flutter/material.dart';

// TODO: Add functionality to the list view
class MiddleRow extends StatelessWidget {
  MiddleRow({Key? key}) : super(key: key);
  final middlerow = ListView(
    shrinkWrap: true,
    padding: const EdgeInsets.all(8),
    children: <Widget>[
      Container(
        height: 50,
        color: Colors.amber[600],
        child: const Center(child: Text('Entry A')),
      ),
      Container(
        height: 50,
        color: Colors.amber[500],
        child: const Center(child: Text('Entry B')),
      ),
      Container(
        height: 50,
        color: Colors.amber[100],
        child: const Center(child: Text('Entry C')),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return middlerow;
  }
}
