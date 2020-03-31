import 'package:flutter/material.dart';

import 'package:ui_project1/customOrder.dart';
import 'package:ui_project1/userInformation.dart';

class OptionalFeatures extends StatefulWidget {
  @override
  int price = 0;
  model teslaModel = null;
  int quantity = 1;

  OptionalFeatures(int cost, model teslaType, int quantity) {
    price = cost;
    teslaModel = teslaType;
    quantity = quantity;
  }
  _OptionalFeaturesState createState() =>
      _OptionalFeaturesState(price, teslaModel, quantity);
}

class _OptionalFeaturesState extends State<OptionalFeatures> {
  @override
  int cost;
  model teslaModel = null;
  int quantity = 1;
  String teslaColor = 'White';
  int colorCost = 0;
  String teslaWheel = 'Factory';
  int wheelCost = 0;
  String teslaInterior = 'Black';
  int interiorCost = 0;
  String teslaRange = 'Standard';
  int rangeCost = 0;
  String teslaAutopilot = 'Not Active';
  int autopilotCost = 0;
  int totalCost = 0;

  _OptionalFeaturesState(int price, model teslaType, int quantity) {
    cost = price;
    teslaModel = teslaType;
    quantity = quantity;
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Optional Features'),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 5.0,
                  ),
                  Container(
                      child: Text(
                    'Color: ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                  Container(
                    width: 15.0,
                  ),
                  DropdownButton<String>(
                    value: teslaColor,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    onChanged: (String newColor) {
                      setState(() {
                        teslaColor = newColor;
                      });
                    },
                    items: <String>['White', 'Black', 'Silver', 'Blue', 'Red']
                        .map<DropdownMenuItem<String>>((String color) {
                      return DropdownMenuItem(
                        child: Text(color),
                        value: color,
                      );
                    }).toList(),
                  ),
                  Container(
                    width: 60.0,
                  ),
                  Container(
                      child: Text('                   '),
                      color: selectedColor(teslaColor)),
                  Container(
                    width: 70.0,
                  ),
                  Text(colorPrice(teslaColor)),
                ],
              ),
              Container(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 5.0,
                  ),
                  Container(
                    child: Text(
                      'Wheels: ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  DropdownButton<String>(
                    value: teslaWheel,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    onChanged: (String newWheel) {
                      setState(() {
                        teslaWheel = newWheel;
                      });
                    },
                    items: <String>[
                      'Factory',
                      'Sport',
                      'Slip Stream',
                    ].map<DropdownMenuItem<String>>((String wheel) {
                      return DropdownMenuItem(
                        child: Text(wheel),
                        value: wheel,
                      );
                    }).toList(),
                  ),
                  Container(
                    width: 20.0,
                  ),
                  Container(
                      child: Image.asset(
                    selectedWheel(teslaWheel),
                    height: 65.0,
                  )),
                  Container(
                    width: 70.0,
                  ),
                  Text(wheelPrice(teslaWheel)),
                ],
              ),
              Container(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 5.0,
                  ),
                  Container(
                      child: Text(
                    'Interior: ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                  DropdownButton<String>(
                    value: teslaInterior,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    onChanged: (String newInterior) {
                      setState(() {
                        teslaInterior = newInterior;
                      });
                    },
                    items: <String>[
                      'Black',
                      'White',
                    ].map<DropdownMenuItem<String>>((String interior) {
                      return DropdownMenuItem(
                        child: Text(interior),
                        value: interior,
                      );
                    }).toList(),
                  ),
                  Container(
                    width: 60.0,
                  ),
                  Container(
                      child: Text('                   '),
                      color: selectedColor(teslaInterior)),
                  Container(
                    width: 70.0,
                  ),
                  Text(interiorPrice(teslaInterior)),
                ],
              ),
              Container(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 5.0,
                  ),
                  Container(
                      child: Text(
                    'Range: ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                  Container(
                    width: 10.0,
                  ),
                  DropdownButton<String>(
                    value: teslaRange,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    onChanged: (String newRange) {
                      setState(() {
                        teslaRange = newRange;
                      });
                    },
                    items: <String>[
                      'Standard',
                      'Long Range',
                      'Performance',
                    ].map<DropdownMenuItem<String>>((String range) {
                      return DropdownMenuItem(
                        child: Text(range),
                        value: range,
                      );
                    }).toList(),
                  ),
                  Container(
                    width: 5.0,
                  ),
                  Container(child: Text(selectedRange(teslaRange))),
                  Text(rangePrice(teslaRange)),
                ],
              ),
              Container(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 5.0,
                  ),
                  Container(
                      child: Text(
                    'Autopilot: ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                  DropdownButton<String>(
                    value: teslaAutopilot,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    onChanged: (String newAutopilot) {
                      setState(() {
                        teslaAutopilot = newAutopilot;
                      });
                    },
                    items: <String>[
                      'Not Active',
                      'Active',
                    ].map<DropdownMenuItem<String>>((String autopilot) {
                      return DropdownMenuItem(
                        child: Text(autopilot),
                        value: autopilot,
                      );
                    }).toList(),
                  ),
                  Container(
                    width: 15.0,
                  ),
                  Container(child: Text(selectedAutopilot(teslaAutopilot))),
                  Container(
                    width: 15.0,
                  ),
                  Text(autopilotPrice(teslaAutopilot)),
                ],
              ),
              Container(
                height: 30.0,
              ),
              Center(
                child: Text(
                  'Total Cost: \$ ' + calculateTotal(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 100.0,
              ),
              Row(
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
                                    builder: (context) => UserInformation(
                                        totalCost, teslaModel, quantity)));
                          })),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String colorPrice(String color) {
    if (color == 'White') {
      colorCost = 0;
      return '+ \$ 0';
    } else if (color == 'Black' || color == 'Silver' || color == 'Blue') {
      colorCost = 1000;
      return '+ \$ 1,000';
    } else if (color == 'Red') {
      colorCost = 2000;
      return '+ \$ 2,000';
    } else {
      colorCost = 0;
      return '+ \$ 0';
    }
  }

  Color selectedColor(String color) {
    if (color == 'White') {
      return Colors.white;
    } else if (color == 'Black') {
      return Colors.black;
    } else if (color == 'Silver') {
      return Colors.grey;
    } else if (color == 'Blue') {
      return Colors.blue;
    } else if (color == 'Red') {
      return Colors.red;
    } else {
      return null;
    }
  }

  String wheelPrice(String wheel) {
    if (wheel == 'Factory') {
      wheelCost = 0;
      return '+ \$ 0';
    } else if (wheel == 'Sport') {
      wheelCost = 1500;
      return '+ \$ 1,500';
    } else if (wheel == 'Slip Stream') {
      wheelCost = 4000;
      return '+ \$ 4,000';
    } else {
      wheelCost = 0;
      return '+ \$ 0';
    }
  }

  String selectedWheel(String wheel) {
    if (wheel == 'Factory') {
      return 'assets\\images\\factoryWheel.jfif';
    } else if (wheel == 'Sport') {
      return 'assets\\images\\sportWheel.jpg';
    } else if (wheel == 'Slip Stream') {
      return 'assets\\images\\slipstreamWheel.jpg';
    } else {
      return '';
    }
  }

  String interiorPrice(String interior) {
    if (interior == 'Black') {
      interiorCost = 0;
      return '+ \$ 0';
    } else if (interior == 'White') {
      interiorCost = 1000;
      return '+ \$ 1,000';
    } else {
      interiorCost = 0;
      return '+ \$ 0';
    }
  }

  String selectedRange(String range) {
    if (range == 'Standard') {
      return 'Range: 250mi\nTop Speed: 140mph   \n0-60: 5.3s';
    } else if (range == 'Long Range') {
      return 'Range: 300mi\nTop Speed: 145mph   \n0-60: 4.4s';
    } else if (range == 'Performance') {
      return 'Range: 322mi\nTop Speed: 145mph   \n0-60: 3.2s';
    } else {
      return 'Range: 250mi\nTop Speed: 140mph   \n0-60: 5.3s';
    }
  }

  String rangePrice(String range) {
    if (range == 'Standard') {
      rangeCost = 0;
      return '+ \$ 0';
    } else if (range == 'Long Range') {
      rangeCost = 9000;
      return '+ \$ 9,000';
    } else if (range == 'Performance') {
      rangeCost = 17000;
      return '+ \$ 17,000';
    } else {
      rangeCost = 0;
      return '+ \$ 0';
    }
  }

  String selectedAutopilot(String autopilot) {
    if (autopilot == "Not Active") {
      return 'Autopilot function   \nNOT INCLUDED   ';
    } else if (autopilot == 'Active') {
      return 'Autopilot function   \nINCLUDED   ';
    } else {
      return 'Autopilot function   \nNOT INCLUDED   ';
    }
  }

  String autopilotPrice(String autopilot) {
    if (autopilot == "Not Active") {
      autopilotCost = 0;
      return '+ \$ 0';
    } else if (autopilot == 'Active') {
      autopilotCost = 7000;
      return '+ \$ 7,000';
    } else {
      autopilotCost = 0;
      return '+ \$ 0';
    }
  }

  String calculateTotal() {
    totalCost =
        cost + colorCost + wheelCost + interiorCost + rangeCost + autopilotCost;
    return totalCost.toString();
  }
}
