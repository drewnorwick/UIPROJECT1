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
<<<<<<< Updated upstream
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
=======
    return MaterialApp(
      home: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(child: Image.asset('assets\\images\\TeslaLogo.jpeg',)),
              Center(
                child: RaisedButton(
                  child: Text(
                    'Custom Order',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CustomOrder()),
                    );
                  }),
              ),
            ]),
      ),
>>>>>>> Stashed changes
    );
  }
}
