import 'package:flutter/material.dart';
import 'package:scrumfit/widgets/liftCard.dart';
import 'package:scrumfit/models/lift.dart';
import 'package:scrumfit/routes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  var lifts = <Lift>[];
  final Lift example = new Lift("Bench", 5, 0, 5);
  

  @override
  Widget build(BuildContext context) {
    lifts.add(example);
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrumFit"),
      ),
      body: _liftList(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {_goToCreateLiftScreen(context);},
        icon: Icon(Icons.add),
        label: Text("Add Workout"),
      ),
    );
  }

  Widget _liftList(){
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if(i < lifts.length)
          return _buildRow(lifts[i]);
      });
  }

  Widget _buildRow(Lift lift){
    return LiftCard(lift);
  }

  void _goToCreateLiftScreen(BuildContext context) async {
    Lift result = await Navigator.of(context).pushNamed('/createLift');

    if(result != null)
    {
      var _lifts = this.lifts;
      _lifts.add(result);

      setState(() {
        lifts = _lifts;
      });
    }
  }
}