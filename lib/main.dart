import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int changeImage = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Center(
              child: FlatButton(
                onPressed: changeBallImage,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Image.asset('images/ball$changeImage.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }


  void changeBallImage() {
    setState(() {
      changeImage = Random().nextInt(5) + 1;
    });
  }
}


