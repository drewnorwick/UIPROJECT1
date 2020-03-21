import 'package:flutter/material.dart';

class OptionalFeatures extends StatefulWidget {
  @override
  _OptionalFeaturesState createState() => _OptionalFeaturesState();
}

class _OptionalFeaturesState extends State<OptionalFeatures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Optional Features')
        ),
      body: Container(child: Image.asset('assets\\images\\modelX.png'),),
    );
  }
}