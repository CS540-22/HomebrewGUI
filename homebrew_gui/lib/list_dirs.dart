import 'dart:io';
import 'package:path/path.dart';

List<String> listDirs(String path) {
  List<String> dirs = [];
  Directory dir = Directory(path);
  dir.listSync().forEach((f) {
    if (f is Directory) {
      dirs.add(basename(f.path));
    }
  });
  dirs.sort();
  return dirs;
}
