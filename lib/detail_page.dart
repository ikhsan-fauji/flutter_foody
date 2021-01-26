import 'package:flutter/material.dart';
import 'package:futter_foody/home_page.dart';

class DetailPage extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Foody'),),
      body: Center(
        child: RaisedButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
    );
  }
}
