import 'package:flutter/material.dart';
import './main.dart';

class Confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('Tesla', style: TextStyle(fontSize: 60)),
            ),
            Container(
              child: Text('Order Confirmed',style:TextStyle(fontSize: 20)),
            ),
            Container(
              child: Text(
                'A confirmation email has been sent to your email address.',style:TextStyle(fontSize: 20)
                
              ),
            ),
            Container(
              child: Text(
                'Your custom order will arrive in 3-5 weeks',style:TextStyle(fontSize: 20)
                
              ),
            ),
            RaisedButton(
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
    );
  }
}
