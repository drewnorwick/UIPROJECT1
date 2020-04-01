import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_project1/summary.dart';
import 'package:ui_project1/customOrder.dart';

class UserInformation extends StatefulWidget {
  @override
  int price = 0;
  model teslaModel = null;
  int quantity;
  String color;
  String interior;
  String wheel;
  String auto;
  String range;

  UserInformation(int cost, model teslaType, int quantity,String color,String interior,String wheel,
  String auto,String range) {
    price = cost;
    teslaModel = teslaType;
    this.quantity = quantity;
    this.color=color;
    this.interior=interior;
    this.wheel=wheel;
    this.auto=auto;
    this.range=range;
  }
  _UserInformationState createState() =>
      _UserInformationState(price, teslaModel, quantity, color, interior, wheel, auto, range);
}

class _UserInformationState extends State<UserInformation> {
  int cost;
  model teslaModel;
  int quantity;
  String color;
  String interior;
  String wheel;
  String auto;
  String range;

  String fName;
  String lName;
  String emailAddress;
  String phoneNumber;

  String nameOnCard;
  String cardNumber;
  String expDate;
  String cvv;
  String address;
  String city;
  String state;
  String billingZipCode;
  String zipCode;

  _UserInformationState(int price, model teslaType, int quantity,String color,String interior,String wheel,String auto,String range) {
    cost = price;
    teslaModel = teslaType;
    this.quantity = quantity;
    this.color=color;
    this.interior=interior;
    this.wheel=wheel;
    this.auto=auto;
    this.range=range;

  }

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
          appBar: AppBar(
            title: Text("User Information"),
            backgroundColor: Colors.red,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: <Widget>[
              Text('Personal Account Information',
              style: TextStyle(fontSize: 20),
              ),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'First Name'),
                    onChanged: (text) {
                      fName = text;
                    },
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Last Name'),
                    onChanged: (text) {
                    lName = text;
                    },
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Email Address'),
                    onChanged: (text) {
                      emailAddress = text;
                    },
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Phone Number'),
                    onChanged: (text) {
                    phoneNumber = text;
                  },
              )),              
              Text('Card Information',
                    style: TextStyle(fontSize: 20),
              ),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Name on Card'),
                      onChanged: (text) {
                      nameOnCard = text;
                    },
                )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Card Number'),
                      onChanged: (text) {
                      cardNumber = text;
                    },
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Expiration Date (MM/YY)'),
                      onChanged: (text) {
                      expDate = text;
                    },
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'CVV'),
                    onChanged: (text) {
                    cvv = text;
                    },
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Billing Zip Code'),
                    onChanged: (text) {
                    billingZipCode = text;
                    },
              )),
                         Text('Shipping Information',
                    style: TextStyle(fontSize: 20),
              ),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Address'),
                    onChanged: (text) {
                    address = text;
                  },
                )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'City'),
                    onChanged: (text) {
                    city = text;
                  },
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'State'),
                    onChanged: (text) {
                    state = text;
                    },
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Zip Code'),
                    onChanged: (text) {
                    zipCode = text;
                  },
              )),
           Container(
                child: Row(
              children: <Widget>[
                Container(width: 60.0),
                SizedBox(
                  width: 125.0,
                  child: RaisedButton(
                    color: Colors.red,
                    textColor: Colors.black,
                    child: Text(
                      'Back',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(width: 25.0),
                SizedBox(
                  width: 125.0,
                  child: RaisedButton(
                      color: Colors.red,
                      textColor: Colors.black,
                      child: Text(
                        'Continue',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Summary(teslaModel, emailAddress, fName, lName, address, city, state, zipCode, cost, quantity, color, wheel, auto, range, interior)));
                      }),
                ),
            ]),
        )
      ]),
        )
    )
    );
  }
}
