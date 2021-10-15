import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String myMargin = 'abc';
    double myMarginDouble;
    
    try{
      myMarginDouble = double.parse(myMargin);
    } catch(e){
      myMarginDouble = 15;
      print(e);
    }


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exception Hadling Demo'),
        ),
        body: Container(
          margin: EdgeInsets.all(myMarginDouble),
          color: Colors.green,
        ),
      ),
    );
  }
}
