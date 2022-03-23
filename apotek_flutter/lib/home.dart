import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
      ),
      body: Container(
          color: Colors.green.shade300,
          child: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
            child: Text('SELAMAT DATANG DI APOTEK AZ-ZAHRA',
                style: TextStyle(fontSize: 20))),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
          child: Image.asset(
            'assets/img/apotek.jpg',
            height: 200,
            width: 300,
          ),
        ),
        Center(
          child: Text(''),
        ),
      ])),
    );
  }
}