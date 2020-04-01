import 'package:flutter/material.dart';
import './main.dart';

class Confirmation extends StatelessWidget {

  final String fName;
  final String emailAddress;
  Confirmation(this.fName, this.emailAddress);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset('assets\\images\\TeslaLogo.jpeg'),
                ),
                Container(
                  child: Text('Thank you for your purchase, ${fName.toString()}.',
                      style: TextStyle(fontSize: 20)),
                ),
                Container(
                  child: Text(
                      'A confirmation email has been sent to ${emailAddress.toString()}',
                      style: TextStyle(fontSize: 20)),
                ),
                Container(
                  child: Text('Your custom order will arrive in 3-5 weeks',
                      style: TextStyle(fontSize: 20)),
                ),
                RaisedButton(
                    color: Colors.red,
                    textColor: Colors.black,
                    child: Text(
                      'Home',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }),
              ]),
        ));
  }
}
