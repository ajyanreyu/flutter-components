import 'package:flutter/material.dart';
import 'package:flutter_components/pages/alert_page.dart';
import 'package:flutter_components/pages/home_page.dart';
import 'package:flutter_components/providers/avatar_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage()
  };
}