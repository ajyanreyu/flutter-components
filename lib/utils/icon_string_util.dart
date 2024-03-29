import 'package:flutter/material.dart';

final _icon = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
};

Icon getIcon(String name) {
  return Icon(
    _icon[name],
    color: Colors.blue,
  );
}
