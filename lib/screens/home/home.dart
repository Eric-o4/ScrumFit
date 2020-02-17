import 'package:flutter/material.dart';
import 'package:scrumfit/widgets/liftCard.dart';
import 'package:scrumfit/models/lift.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  final Lift example = new Lift("Example", 10, 0, 3);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrumFit"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LiftCard(example),
          ],
        ),
      ),
    );
  }
}