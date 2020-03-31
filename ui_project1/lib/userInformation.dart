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
  String address;
  String area;
  int phoneNumber;

  String nameOnCard;
  int cardNumber;
  int expMonth;
  int expYear;
  int cvv;
  int billingZipCode;

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
              body: Column(children: <Widget>[
          Image.asset('assets\\images\\TeslaLogo.jpeg'),
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
                  MaterialPageRoute(builder: (context) => Summary(address, area, cost, quantity)),
                );
              }),
        ),),
    );
  }
}
