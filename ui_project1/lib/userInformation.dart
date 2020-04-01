import 'package:flutter/material.dart';
import 'package:ui_project1/summary.dart';
import 'package:ui_project1/customOrder.dart';

class UserInformation extends StatefulWidget {
  @override
  int price = 0;
  model teslaModel = null;
  int quantity = 1;
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
  int phoneNumber;

  String nameOnCard;
  String cardNumber;
  String expDate;
  String cvv;
  String address;
  String billingZipCode;

  _UserInformationState(int price, model teslaType, int quantity,String color,String interior,String wheel,String auto,String range) {
    cost = price;
    teslaModel = teslaType;
    quantity = quantity;
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
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Last Name'),
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Email Address'),
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Phone Number'),
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
                )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Card Number'),
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Expiration Date (MM/YY)'),
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'CVV'),
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Billing Zip Code'),
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
                )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'City'),
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'State'),
              )),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Zip Code'),
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
                                    Summary(teslaModel, address, billingZipCode, cost, quantity, color, wheel, auto, range, interior)));
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
