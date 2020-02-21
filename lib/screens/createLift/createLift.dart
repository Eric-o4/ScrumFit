import 'package:flutter/material.dart';
import 'package:scrumfit/widgets/liftCard.dart';
import 'package:scrumfit/models/lift.dart';

class CreateLiftScreen extends StatefulWidget {
  @override
  _CreateLiftScreenState createState() => _CreateLiftScreenState();
}

class _CreateLiftScreenState extends State<CreateLiftScreen> {
  final _formKey = GlobalKey<FormState>();

  String liftName;
  int sets;
  int reps;

  TextEditingController nameController = new TextEditingController();
  TextEditingController setsController = new TextEditingController();
  TextEditingController repsController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Lift"),
        ),
        body: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Lift Name'),
                  validator: (value) {
                    if (value.isEmpty) return 'Please enter a name';
                    return null;
                  }),
              TextFormField(
                  controller: setsController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Sets'),
                  validator: (value) {
                    if (value.isEmpty) return 'Please enter a sets number';
                    return null;
                  }),
              TextFormField(
                  controller: repsController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Reps'),
                  validator: (value) {
                    if (value.isEmpty) return 'Please enter a sets number';
                    return null;
                  }),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context, null);
                },
                child: Text('Save'),
              ),
              FlatButton(
                onPressed: () {
                  final form = _formKey.currentState;
                  if (form.validate()) {
                    Lift retval = new Lift(
                        nameController.text,
                        int.parse(repsController.text),
                        0,
                        int.parse(setsController.text));
                    Navigator.pop(context, retval);
                  }
                },
                child: Text('Cancel'),
              ),
            ])));
  }

  void _goBack(BuildContext context) {
    Navigator.pop(context, null);
  }

  void _submit(BuildContext context) {
    final form = _formKey.currentState;
    if (form.validate()) {
      Lift retval = new Lift(nameController.text,
          int.parse(repsController.text), 0, int.parse(setsController.text));
      Navigator.pop(context, retval);
    }
  }
}
