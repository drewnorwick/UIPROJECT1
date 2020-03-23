import 'package:flutter/material.dart';
import './confirmation.dart';

enum model { modelS, model3, modelX, modelY, cybertruck }

class Summary extends StatelessWidget {
  final model chosenModel;
  final String address;
  final String area;
  final double total;
  final int amount;

  Summary(this.chosenModel, this.address, this.area, this.total, this.amount);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
      ),
      body: Column(children: <Widget>[
        Text('Chosen Model: ${chosenModel.toString()}'),
        Text('Amount: ${amount.toString()}'),
        Container(
          child: Text('data'),
        ),
        Container(
          child: Text('data'),
        ),
        Text('Total Price: ${total.toString()}'),
      ]),
      persistentFooterButtons: <Widget>[
        RaisedButton(
            child: Text("Order"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Warning final submission.'),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              child: Text('Submit'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Confirmation()));
                              },
                            )),
                      ]),
                    );
                  });
            }),
      ],
    );
  }
}
