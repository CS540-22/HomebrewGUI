import 'package:flutter/material.dart';
import 'package:homebrew_gui/middle_row.dart';
import 'package:homebrew_gui/side_panel.dart';
import 'package:homebrew_gui/top_row.dart';
import 'dart:io';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isLinux || Platform.isMacOS) {
    setWindowMinSize(const Size(400, 300));
    setWindowMaxSize(Size.infinite);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homebrew GUI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      body: Row(
        children: <Widget>[
          Expanded(flex: 3, child: SidePanel()),
          Expanded(
            flex: 7,
            child: Column(
              children: <Widget>[
                Expanded(flex: 1, child: TopRow()),
                const Expanded(flex: 5, child: MiddleRow()),
                const SizedBox(height: 10),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 40, 44, 52),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                    ),
                    alignment: Alignment.center,
                    child: const Text('Place holder'),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(width: 10)
        ],
      ),
    );
  }
}
