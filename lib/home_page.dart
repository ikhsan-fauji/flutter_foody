import 'package:flutter/material.dart';
import 'package:futter_foody/detail_page.dart';

class HomePage extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Foody'),),
      body: Center(
        child: RaisedButton(
          child: Text('Detail'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
          },
        ),
      ),
    );
  }
}
