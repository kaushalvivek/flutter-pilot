import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextControlState();
  }
}

class _TextControlState extends State {
  var _mainText = "Hello There!";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            setState(() {
              _mainText = "What's Up?";
            });
          },
          child: Text("CLICK"),
        ),
        TextOutput(_mainText)
      ],
    );
  }
}
