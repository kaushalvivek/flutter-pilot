import 'package:flutter/material.dart';

import './text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Switch',
      home: Scaffold(
          appBar: AppBar(title: Text("Change Text")),
          body: Center(child: TextControl())),
    );
  }
}
