import 'package:flutter/material.dart';
import 'list_dirs.dart';

// File list will be used to display the files as packages that are available
class FileList extends StatefulWidget {
  const FileList({Key? key}) : super(key: key);

  @override
  State<FileList> createState() => _FileList();
}

class _FileList extends State<FileList> {
  List<String> pkgs;

  _FileList() : pkgs = listDirs('/usr/local/Cellar');

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 196, 196, 196),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(25.0), // here the desired height
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromARGB(254, 143, 162, 255),
            toolbarHeight: 25,
            title: const Text(
              'Press on the refresh button to see what packages are downloaded',
              style: TextStyle(fontSize: 15),
            ),
            leading: IconButton(
              iconSize: 15,
              icon: const Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  pkgs = listDirs('/usr/local/Cellar');
                });
              },
            ),
          ),
        ),
        body: CustomScrollView(
          center: centerKey,
          slivers: <Widget>[
            SliverList(
              key: centerKey,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 220, 220, 220),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                    ),
                    alignment: Alignment.centerLeft,
                    height: 25,
                    child: Text(
                      pkgs[index],
                    ),
                  );
                },
                childCount: pkgs.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
