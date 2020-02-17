import 'package:flutter/material.dart';
import 'package:scrumfit/models/lift.dart';

class LiftCard extends StatefulWidget {
  final Lift lift;

  LiftCard(this.lift);

  @override
  LiftCardState createState() => LiftCardState();
}

class LiftCardState extends State<LiftCard> {
  Widget build(
    BuildContext context,
  ) {
    return Center(
        child: Card(
            child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: Text(widget.lift.name),
          trailing: Text(widget.lift.sets.toString() +
              " x " +
              widget.lift.goalReps.toString()),
        )
      ],
    )));
  }
}
