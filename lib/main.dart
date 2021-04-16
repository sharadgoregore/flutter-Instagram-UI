import 'package:flutter/material.dart';
import 'package:insta/Screens/Homepage.dart';
import 'package:insta/allRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home: Homepage(),
      routes: allRoute(dynamic),
    );
  }
}
