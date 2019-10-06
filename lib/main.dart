import 'package:flutter/material.dart';

import 'package:flutter_components/pages/alert_page.dart';
import 'package:flutter_components/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Component App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContextcontext) => AlertPage());
      },
    );
  }
}
