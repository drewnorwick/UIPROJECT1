import 'package:flutter/material.dart';

import 'package:ui_project1/optionalFeatures.dart';

enum model { modelS, model3, modelX, modelY, cybertruck }

class CustomOrder extends StatefulWidget {
  @override
  _CustomOrderState createState() => _CustomOrderState();
}

class _CustomOrderState extends State<CustomOrder> {
  @override
  model _teslaModel = model.modelS;
  int price = 74490;
  int totalPrice = 74490;
  int quantity = 1;

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Order"),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: <Widget>[
            ListTile(
              title: const Text(
                "MODEL S \$74,490",
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                  value: model.modelS,
                  groupValue: _teslaModel,
                  onChanged: (model value) {
                    setState(() {
                      _teslaModel = value;
                      price = 74490;
                      totalPrice = price;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "MODEL 3 \$35,690",
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                  value: model.model3,
                  groupValue: _teslaModel,
                  onChanged: (model value) {
                    setState(() {
                      _teslaModel = value;
                      price = 35690;
                      totalPrice = price;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "MODEL X \$79,690",
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                  value: model.modelX,
                  groupValue: _teslaModel,
                  onChanged: (model value) {
                    setState(() {
                      _teslaModel = value;
                      price = 79690;
                      totalPrice = price;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "MODEL Y \$48,690",
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                  value: model.modelY,
                  groupValue: _teslaModel,
                  onChanged: (model value) {
                    setState(() {
                      _teslaModel = value;
                      price = 48690;
                      totalPrice = price;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "CYBERTRUCK \$39,900",
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                  value: model.cybertruck,
                  groupValue: _teslaModel,
                  onChanged: (model value) {
                    setState(() {
                      _teslaModel = value;
                      price = 39900;
                      totalPrice = price;
                    });
                  }),
            ),
            Container(
              child: Image.asset(
                setImage(_teslaModel),
                height: 175.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 90.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Quantity',
                    style: TextStyle(fontSize: 20),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: 65.0,
                        child: RaisedButton(
                          color: Colors.red,
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          child: Text(
                            '+',
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            setState(() {
                              quantity = addQuantity(quantity);
                              totalPrice = price * quantity;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 65.0,
                        child: RaisedButton(
                          color: Colors.red,
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            setState(() {
                              quantity = subQuantity(quantity);
                              totalPrice = price * quantity;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Text(
                      quantity.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                '\$ ' + (price * quantity).toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
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
                                    OptionalFeatures(totalPrice, _teslaModel, quantity)));
                      }),
                ),
              ],
            )),
          ]),
        ),
      ),
    );
  }

  String setImage(model teslaModel) {
    if (teslaModel == model.model3) {
      return 'assets\\images\\model3.jfif';
    } else if (teslaModel == model.modelS) {
      return 'assets\\images\\modelS.jpg';
    } else if (teslaModel == model.modelX) {
      return 'assets\\images\\modelX.png';
    } else if (teslaModel == model.modelY) {
      return 'assets\\images\\modelY.png';
    } else if (teslaModel == model.cybertruck) {
      return 'assets\\images\\cybertruck.jpg';
    } else {
      return '';
    }
  }

  int addQuantity(int number) {
    number = number + 1;
    return number;
  }

  int subQuantity(int number) {
    if (number <= 1) {
      return 1;
    } else {
      number = number - 1;
    }
    return number;
  }
}
