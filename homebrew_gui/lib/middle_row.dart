import 'package:flutter/material.dart';
import 'file_list.dart';

class MiddleRow extends StatelessWidget {
  const MiddleRow({Key? key}) : super(key: key);
  final middlerow = const FileList();

  @override
  Widget build(BuildContext context) {
    return middlerow;
  }
}
