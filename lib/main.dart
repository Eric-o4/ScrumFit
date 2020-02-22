import 'package:flutter/material.dart';
import 'package:scrumfit/routes.dart';


void main() => runApp(ScrumFit());

class ScrumFit extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        cardTheme: CardTheme(
          elevation: 3.0,
          color: Colors.white)
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}
