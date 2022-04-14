import 'dart:io';
import 'package:flutter/material.dart';
import 'globals.dart';

void _rundoctor() async {
  print('Starting brew doctor\nwait...');
  await Process.run('brew', ['doctor']).then((ProcessResult pr) {
    print(pr.exitCode);
    print(pr.stdout);
    print(pr.stderr);
  });
  print('brew doctor done');
}

class ButtonPanel extends StatelessWidget {
  final buttons = Column(
    children: <Widget>[
      ElevatedButton(
        onPressed: () {},
        style: style1,
        child: const Text('Download Packages'),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {},
        style: style1,
        child: const Text('Common Packages'),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {},
        style: style1,
        child: const Text('Updates'),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: _rundoctor,
        style: style1,
        child: const Text('Doctor'),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {},
        style: style1,
        child: const Text('Uninstall'),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {},
        style: style1,
        child: const Text('Help'),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {},
        style: style1,
        child: const Text('Documentation'),
      ),
    ],
  );

  ButtonPanel({Key? key}) : super(key: key);
  // const ButtonPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buttons;
  }
}
