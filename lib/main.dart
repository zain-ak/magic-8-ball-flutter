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

class _Ball extends State<BallPage> {
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
            onPressed: () => {},
            child: Image.asset('images/ball1.png', height: 300.0),
            //Remove button animations with below code
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent
          ),
        ],
      )
    );
  }

}