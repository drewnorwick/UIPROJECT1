import 'package:flutter/material.dart';
import './confirmation.dart';

enum model { modelS, model3, modelX, modelY, cybertruck }

class Summary extends StatelessWidget {
  final model chosenModel = model.cybertruck;
  final String address;
  final String area;
  final double total;
  final int amount;

  Summary(this.address, this.area, this.total, this.amount);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
      ),
      body: Center(child:Column(children: <Widget>[
        Text(
          '\nChosen Model: ${chosenModel.toString()}\n',
          style: TextStyle(fontSize: 20),
        ),
        Text('Amount: ${amount.toString()}\n\n\n',style: TextStyle(fontSize: 20)),
        Container(
          child: Text('data',style: TextStyle(fontSize: 20)),
        ),
        Container(
          child: Text('data\n',style: TextStyle(fontSize: 20)),
        ),
        Text('Address: ${address.toString()}',style: TextStyle(fontSize: 20)),
        Text('Area: ${area.toString()}\n',style: TextStyle(fontSize: 20)),
        Text('Total Price: ${total.toString()}',style: TextStyle(fontSize: 20)),
      ]),),
      persistentFooterButtons: <Widget>[
        RaisedButton(
            child: Text("Order",style: TextStyle(fontSize: 20)),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        content: Center(
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Warning final submission.',style: TextStyle(fontSize: 20)),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              child: Text('Submit',style: TextStyle(fontSize: 20)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Confirmation()));
                              },
                            )),
                      ]),
                    ));
                  });
            }),
      ],
    );
  }
}
