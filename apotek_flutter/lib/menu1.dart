import 'package:apotek_flutter/screens/barang_screen.dart';
import 'package:flutter/material.dart';
import 'satu.dart';
import 'dua.dart';
import 'tiga.dart';
import 'empat.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text('Menu'),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            // Container(
            //   padding: EdgeInsets.fromLTRB(10, 10, 7, 10),
            //   width: 450,
            //   height: 90,
            //   child: TextButton(
            //       style: TextButton.styleFrom(
            //         backgroundColor: Colors.green,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //       ),
            //       child: Text(
            //         "Kategori",
            //         style: TextStyle(fontSize: 20, color: Colors.white),
            //       ),
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => Satu(),
            //             ));
            //       }),
            // ),
             Container(
              padding: EdgeInsets.fromLTRB(10, 10, 7, 10),
              width: 450,
              height: 90,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: 
                  Text(
                    "Barang",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BarangScreen(),
                        ));
                  }),
                  
            ),
            //  Container(
            //   padding: EdgeInsets.fromLTRB(10, 10, 7, 10),
            //   width: 450,
            //   height: 90,
            //   child: TextButton(
            //       style: TextButton.styleFrom(
            //         backgroundColor: Colors.green,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //       ),
            //       child: Text(
            //         "Satuan",
            //         style: TextStyle(fontSize: 20, color: Colors.white),
            //       ),
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => Tiga(),
            //             ));
            //       }),
            // ),
            //  Container(
            //   padding: EdgeInsets.fromLTRB(10, 10, 7, 10),
            //   width: 450,
            //   height: 90,
            //   child: TextButton(
            //       style: TextButton.styleFrom(
            //         backgroundColor: Colors.green,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //       ),
            //       child: Text(
            //         "User",
            //         style: TextStyle(fontSize: 20, color: Colors.white),
            //       ),
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => Empat(),
            //             ));
            //       }),
            // ),
          ],
        ),
      ]),
    ));
  }
}