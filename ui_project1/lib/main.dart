import 'package:flutter/material.dart';
import 'package:ui_project1/customOrder.dart';

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
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: Column(children: <Widget>[
          Image.asset('assets\\images\\TeslaLogo.jpeg'),
        ]),
        floatingActionButton: Container(
          margin: EdgeInsets.only(right: 85.0, bottom: 60.0), 
          child: RaisedButton(
            color: Colors.red,
            textColor: Colors.black,
              child: Text(
                'Custom Order',
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomOrder()),
                );
              }),
        ),
      ),
    );
  }
}
