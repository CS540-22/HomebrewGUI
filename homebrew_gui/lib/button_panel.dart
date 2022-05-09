import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'globals.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

void _brewdoctor() async {
  print('Starting brew doctor\nwait...');
  await Process.run('brew', ['doctor']).then((ProcessResult pr) {
    print(pr.exitCode);
    print(pr.stdout);
    print(pr.stderr);
  });

  print('brew doctor done');
}

Future<String> _brewupdate() async {
  var stdout = '';
  print('Starting brew update\nwait...');
  await Process.run('brew', ['update']).then((ProcessResult pr) {
    print(pr.exitCode);
    stdout = pr.stdout;
    print(pr.stderr);
  });
  if (stdout != 'Already up-to-date.\n') {
    await Process.run('brew', ['upgrade']).then((ProcessResult pr) {
      print(pr.exitCode);
      stdout = pr.stdout;
      print(pr.stdout);
      print(pr.stderr);
    });
    print('brew update done');
    return stdout;
  }
  print('brew update done');
  return stdout;
}

Future<List> _brewuninstall(String package) async {
  var stdout = '';
  var stderr = '';
  var exitCode = -1;
  await Process.run('brew', ['uninstall', package]).then((ProcessResult pr) {
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

Future<List> _brewinstall(String package) async {
  var stdout = '';
  var stderr = '';
  var exitCode = -1;
  await Process.run('brew', ['install', package]).then((ProcessResult pr) {
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

Future<dynamic> _brewcommonpkgs() async {
  final response = await http.get(
      Uri.parse('https://formulae.brew.sh/api/analytics/install/30d.json'));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

void _launchURL(Uri _url) async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}

class ButtonPanel extends StatelessWidget {
  ButtonPanel({Key? key}) : super(key: key);

  final uninstallController = TextEditingController();
  final Uri _url = Uri.parse(
      'https://github.com/CS540-22/HomebrewGUI/tree/main/homebrew_gui');
  final Uri _url2 = Uri.parse('https://github.com/CS540-22/HomebrewGUI/issues');

  void clearText() {
    uninstallController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () async {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20.0,
                      ),
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  title: const Text(
                    "Select what package you want to install",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Select your package",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: uninstallController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Package Name',
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 60,
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () async {
                              print('Selected package: ' +
                                  uninstallController.text);
                              await _brewinstall(uninstallController.text)
                                  .then((List<dynamic> result) {
                                if (result[0]) {
                                  print('Install successful');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      backgroundColor:
                                          Color.fromARGB(254, 143, 162, 255),
                                      content: Text('Install Successful'),
                                      duration: Duration(milliseconds: 2500),
                                      width: 500, // Width of the SnackBar.
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                } else {
                                  print('Install failed');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      backgroundColor: const Color.fromARGB(
                                          254, 143, 162, 255),
                                      content: Text(
                                        'Install Failed: ' + result[1],
                                        textAlign: TextAlign.center,
                                      ),
                                      duration:
                                          const Duration(milliseconds: 2500),
                                      width: 500, // Width of the SnackBar.
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                  print(result[1]);
                                }
                              });
                              clearText();
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              // fixedSize: Size(250, 50),
                            ),
                            child: const Text(
                              "Submit",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          style: style1,
          child: const Text('Download Packages'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            await _brewcommonpkgs().then((dynamic result) {
              List<String> pkgs = [];
              for (var i = 0; (i < result['items'].length) && (i < 100); i++) {
                pkgs.add(result['items'][i]['formula']);
              }
              print(pkgs);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: const Color.fromARGB(254, 143, 162, 255),
                  content: Text(pkgs.toString()),
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
            });
          },
          style: style1,
          child: const Text('Common Packages'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: const Color.fromARGB(254, 143, 162, 255),
                content: const Text('Wait while Homebrew is updating...'),
                duration: const Duration(minutes: 1),
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
            await _brewupdate().then((String result) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: const Color.fromARGB(254, 143, 162, 255),
                  content: Text(result),
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
            });
          },
          style: style1,
          child: const Text('Updates'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _brewdoctor,
          style: style1,
          child: const Text('Doctor'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20.0,
                      ),
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  title: const Text(
                    "Select what package you would like to uninstall",
                    style: TextStyle(fontSize: 24.0),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Select your package",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: uninstallController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Package Name',
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 60,
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () async {
                              print('Selected package: ' +
                                  uninstallController.text);
                              await _brewuninstall(uninstallController.text)
                                  .then((List<dynamic> result) {
                                if (result[0]) {
                                  print('Uninstall successful');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      backgroundColor:
                                          Color.fromARGB(254, 143, 162, 255),
                                      content: Text('Uninstall Successful'),
                                      duration: Duration(milliseconds: 2500),
                                      width: 500, // Width of the SnackBar.
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                } else {
                                  print('Uninstall failed');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      backgroundColor: const Color.fromARGB(
                                          254, 143, 162, 255),
                                      content: Text(
                                        'Uninstall Successful: ' + result[1],
                                        textAlign: TextAlign.center,
                                      ),
                                      duration:
                                          const Duration(milliseconds: 2500),
                                      width: 500, // Width of the SnackBar.
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                  print(result[1]);
                                }
                              });
                              clearText();
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              // fixedSize: Size(250, 50),
                            ),
                            child: const Text(
                              "Submit",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          style: style1,
          child: const Text('Uninstall'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            _launchURL(_url2);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Color.fromARGB(254, 143, 162, 255),
                content: Text('Opened help in browser'),
                duration: Duration(milliseconds: 2500),
                width: 500, // Width of the SnackBar.
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          style: style1,
          child: const Text('Help'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            _launchURL(_url);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Color.fromARGB(254, 143, 162, 255),
                content: Text('Launched documentation in browser'),
                duration: Duration(milliseconds: 2500),
                width: 500, // Width of the SnackBar.
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          style: style1,
          child: const Text('Documentation'),
        ),
      ],
    );
  }
}
