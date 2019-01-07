import 'package:flutter/material.dart';
import 'package:flutter_game_template/screens/changePart/addPart.dart';
import 'package:flutter_game_template/screens/home/home.dart';
import 'package:flutter_game_template/screens/changePart/listPart.dart';
import 'package:flutter_game_template/screens/store/listStore.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Game Template',
        theme: ThemeData(
          fontFamily: 'ThaiSansNeue',
          scaffoldBackgroundColor: Colors.blueGrey,
          primaryColor: Colors.white,
          hintColor: Colors.black,
          accentColor: Colors.green,
        ),
        home: Home(),
        routes: <String, WidgetBuilder>{
          '/addpart': (BuildContext context) => AddPart('Hello'),
          '/home': (BuildContext context) => Home(),
          '/listpart': (BuildContext context) => listPart(),
          '/liststore': (BuildContext context) => listStore(),
        });
  }
}
