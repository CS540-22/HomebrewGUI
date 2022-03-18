import 'package:flutter/material.dart';
// import 'main.dart';

class MySearchBarState extends StatelessWidget {
  // List fooList = ['one', 'two', 'three', 'four', 'five'];

  // List filteredList = [];
  // @override
  // void initState() {
  //   super.initState();
  //   filteredList = fooList;
  // }

  // void filter(String inputString) {
  //   filteredList =
  //       fooList.where((i) => i.toLowerCase().contains(inputString)).toList();
  //   setState(() {});
  // }
  MySearchBarState({Key? key}) : super(key: key);

  final bar = Align(
    alignment: Alignment.topRight,
    child: Container(
      alignment: Alignment.topRight,
      margin: const EdgeInsets.all(10.0),

      width: 300.0,
      height: 50.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 196, 196, 196),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search ',
              hintStyle: TextStyle(
                fontFamily: 'Righteous',
                color: Color.fromARGB(255, 107, 21, 21),
                fontSize: 14,
              ),
            ),
            onChanged: (text) {
              text = text.toLowerCase();
              // filter(text);
            },
          ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: filteredList.length,
          //     itemBuilder: (BuildContext context, int index) => ListTile(
          //       title: Text(filteredList[index]),
          //       onTap: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => Display(
          //               text: filteredList[index],
          //             ),
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // )
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return bar;
  }
}
