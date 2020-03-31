import 'package:flutter/material.dart';
import 'package:ui_project1/customOrder.dart';
import './confirmation.dart';

class Summary extends StatelessWidget {
  final model chosenModel;
  final String address;
  final String area;
  final int total;
  final int quantity;
  final String color;
  final String interior;
  final String wheel;
  final String auto;
  final String range;

  Summary(this.chosenModel, this.address, this.area, this.total, this.quantity,this.color,this.wheel,this.auto,this.range,this.interior);
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text("Summary"),
          ),
          body: Center(
            child: Column(children: <Widget>[
              Text(
                '\nChosen ${chosenModel.toString()}',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                child: Image.asset(
                  setImage(chosenModel),
                  height: 175.0,
                ),
              ),
              Text('Amount: ${quantity.toString()}\n\n',
                  style: TextStyle(fontSize: 20)),
              Container(
                child: Text('Color: ${color.toString()}', style: TextStyle(fontSize: 20)),
              ),
              Container(
                child: Text('Wheel Type: ${wheel.toString()}', style: TextStyle(fontSize: 20)),
              ),
              Container(
                child: Text('Autopilot: ${auto.toString()}', style: TextStyle(fontSize: 20)),
              ),Container(
                child: Text('Range: ${range.toString()}', style: TextStyle(fontSize: 20)),
              ),
              Container(
                child: Text('Interior: ${interior.toString()}\n', style: TextStyle(fontSize: 20)),
              ),
              Text('Address: ${address.toString()}',
                  style: TextStyle(fontSize: 20)),
              Text('Area: ${area.toString()}\n',
                  style: TextStyle(fontSize: 20)),
              Text('Total Price: ${total.toString()}',
                  style: TextStyle(fontSize: 20)),
            ]),
          ),
          persistentFooterButtons: <Widget>[
            RaisedButton(
                color: Colors.red,
                textColor: Colors.black,
                child: Text("Order", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            content: Container(
                          height: 120.0,
                          child: Column(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Warning final submission.',
                                  style: TextStyle(fontSize: 20)),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  color: Colors.red,
                                  textColor: Colors.black,
                                  child: Text('Submit',
                                      style: TextStyle(fontSize: 20)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Confirmation()));
                                  },
                                )),
                          ]),
                        ));
                      });
                }), RaisedButton(
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
          ],
        ));
  }
}
