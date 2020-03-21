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

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Order"),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: const Text(
                "MODEL S",
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                  value: model.modelS,
                  groupValue: _teslaModel,
                  onChanged: (model value) {
                    setState(() {
                      _teslaModel = value;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "MODEL 3",
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                  value: model.model3,
                  groupValue: _teslaModel,
                  onChanged: (model value) {
                    setState(() {
                      _teslaModel = value;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "MODEL X",
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                  value: model.modelX,
                  groupValue: _teslaModel,
                  onChanged: (model value) {
                    setState(() {
                      _teslaModel = value;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "MODEL Y",
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                  value: model.modelY,
                  groupValue: _teslaModel,
                  onChanged: (model value) {
                    setState(() {
                      _teslaModel = value;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "CYBERTRUCK",
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                  value: model.cybertruck,
                  groupValue: _teslaModel,
                  onChanged: (model value) {
                    setState(() {
                      _teslaModel = value;
                    });
                  }),
            ),
            Container(
              child: Image.asset(image(_teslaModel)),
            ),
            Container(
              margin: EdgeInsets.only(left: 75.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Quantity',
                    style: TextStyle(fontSize: 20),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          child: Text(
                            '+',
                            style: TextStyle(fontSize: 25),
                          ),
                          onPressed: null,
                        ),
                      ),
                      Container(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '# of items',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            RaisedButton(
                child: Text('Continue', style: TextStyle(fontSize: 20),),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OptionalFeatures()));
                }),
          ]
        ),
      ),
    );
  }

  String image(model teslaModel) {
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
}
