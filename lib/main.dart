import 'package:dennis_app/screens/home.dart';
import 'package:dennis_app/util/const.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
        initialRoute: 'home',
        routes: {
          'home'    : ( BuildContext context ) => Home(),
        },
    );
  }
}