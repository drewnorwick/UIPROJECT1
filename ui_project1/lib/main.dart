import 'package:flutter/material.dart';

void main() => runApp(TeslaApp());

class TeslaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesla Homepage',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('TESLA', style: TextStyle(fontSize: 60)
              ),
            ),
            RaisedButton(
              onPressed: null,
              child: Text(
                'Custom Order', style: TextStyle(fontSize: 20),
              ),
            ),
          ]
          ),
    );
  }
}
