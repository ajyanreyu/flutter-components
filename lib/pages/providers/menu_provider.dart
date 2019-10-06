import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    // _loadData();
  }

  Future<List<dynamic>> loadData() async {
    final data = await rootBundle.loadString('data/menu_options.json');
    Map dataMap = json.decode(data);
    options = dataMap['routes'];
    return options;
  }
}

final menuProvider = new _MenuProvider();
