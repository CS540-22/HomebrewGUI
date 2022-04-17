import 'dart:io';
import 'package:flutter/material.dart';

// Searches for packages and displays to user
Future<List> _brewsearch(String package) async {
  var stdout = '';
  var stderr = '';
  var exitCode = -1;
  await Process.run('brew', ['search', package]).then((ProcessResult pr) {
    exitCode = pr.exitCode;
    stdout = pr.stdout;
    stderr = pr.stderr;
    print(pr.exitCode);
    print(pr.stdout);
  });

  if (exitCode == 1) {
    print('Error: $stderr');
    return [false, stderr];
  }
  return [true, stdout];
}

class MySearchBarState extends StatelessWidget {
  const MySearchBarState({Key? key}) : super(key: key);

  static final myController = TextEditingController();

  void dispose() {
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
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
              onSubmitted: (value) async {
                print('Searching for: ' + value);
                await _brewsearch(value).then(
                  (List<dynamic> result) {
                    if (result[0]) {
                      print('Search Successful');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor:
                              const Color.fromARGB(254, 143, 162, 255),
                          content: Text(result[1]),
                          duration: const Duration(minutes: 2),
                          width: 500, // Width of the SnackBar.
                          behavior: SnackBarBehavior.floating,
                          action: SnackBarAction(
                            textColor: const Color.fromARGB(255, 107, 21, 21),
                            label: 'Close',
                            onPressed: () {
                              // Code to execute.
                            },
                          ),
                        ),
                      );
                    } else {
                      print('Search failed');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor:
                              const Color.fromARGB(254, 143, 162, 255),
                          content: Text(
                            'Search failed: ' + result[1],
                            textAlign: TextAlign.center,
                          ),
                          duration: const Duration(minutes: 2),
                          width: 500, // Width of the SnackBar.
                          behavior: SnackBarBehavior.floating,
                          action: SnackBarAction(
                            textColor: const Color.fromARGB(255, 107, 21, 21),
                            label: 'Close',
                            onPressed: () {
                              // Code to execute.
                            },
                          ),
                        ),
                      );
                      print(result[1]);
                    }
                  },
                );
              },
              controller: myController,
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
          ],
        ),
      ),
    );
  }
}
