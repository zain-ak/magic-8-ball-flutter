import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[900],
          body: SafeArea(
              child: BallPage()
          ),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  _Ball createState() => _Ball();
}

class _Ball extends State<BallPage> with TickerProviderStateMixin {
  int _ballIndex = 1;
  bool _visible = true;

  int indexUpdate() {
    return Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 150.0),
          Text('Ask me Anything', style: TextStyle(
            fontSize: 40.0,
            color: Colors.blue[100],
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 75.0),
          FlatButton(
            onPressed: () {
              setState (() {
                _visible = !_visible;
                if (_visible)
                  _ballIndex = indexUpdate();
              });
            },
            child: AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 150),
              child: Image.asset('images/ball$_ballIndex.png', height: 300.0)
            ),
            //Remove button animations with below code
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent
          ),
        ],
      )
    );
  }

}