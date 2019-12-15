import 'package:flutter/material.dart';
import 'Widgets/main.dart' as widgets;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: widgets.Onboarding(),
    );
  }
}
