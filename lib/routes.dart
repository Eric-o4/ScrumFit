import 'package:flutter/widgets.dart';
import 'package:scrumfit/screens/home/home.dart';
import 'package:scrumfit/screens/createLift/createLift.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/' : (context) => HomeScreen(),
  '/createLift' : (context) => CreateLiftScreen(),
};