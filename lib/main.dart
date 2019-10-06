import 'package:flutter/material.dart';
import 'package:flutter_components/pages/alert_page.dart';
import 'package:flutter_components/pages/home_page.dart';
import 'package:flutter_components/pages/providers/avatar_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Component App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage()
      },
    );
  }
}
