import 'package:flutter/material.dart';
import 'package:ui_project1/summary.dart';
import 'package:ui_project1/customOrder.dart';

class UserInformation extends StatefulWidget {
  @override 

  int price = 0;
  model teslaModel = null;
  int quantity = 1;

  UserInformation(int cost, model teslaType, int quantity) {
    price = cost;
    teslaModel = teslaType;
    quantity = quantity;
  }
  _UserInformationState createState() => _UserInformationState(price, teslaModel, quantity);
  
}

class _UserInformationState extends State<UserInformation> {
    
  int cost = 0;
  model teslaModel = null;
  int quantity = 1;
  
  String fName;
  String lName;
  String emailAddress;
  int phoneNumber;

  String nameOnCard;
  String cardNumber;
  String expDate;
  String cvv;
  String billingZipCode;

  _UserInformationState(int price, model teslaType, int quantity) {
    cost = price;
    teslaModel = teslaType;
    quantity = quantity;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text("User Information"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'First Name'),
                  )
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Last Name'),
                  )
            ),            
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Email Address'),
                  )
            ),            
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Phone Number'),
                  )
            ),            
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Name on Card'),
                  )
            ),            
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Card Number'),
                  )
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Expiration Date (MM\YY)'),
                  )
            ),            
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Billing Zip Code'),
                  )
            ),
        ]),
        floatingActionButton: Container(
          margin: EdgeInsets.only(right: 115.0, bottom: 60.0), 
          child: RaisedButton(
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Summary(emailAddress, billingZipCode, cost, quantity)),
                );
              }),
        ),),
    );
  }
}
