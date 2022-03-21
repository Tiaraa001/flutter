import 'package:flutter/material.dart';
import 'satu.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 7, 10),
              width: 450,
              height: 90,
              color: Colors.purple.shade800,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Barang",
                    style: TextStyle(fontSize: 20, color: Colors.purpleAccent),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Satu(),
                        ));
                  }),
            ),
          ],
        ),
      ]),
    ));
  }
}