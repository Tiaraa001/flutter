import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green.shade300,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              child: ClipOval(
                child: Image.asset(
                  'assets/img/poto.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(10),
                height: 230,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green.shade100,
                ),
                child: DataTable(
                  columns: <DataColumn>[
                    DataColumn(label: Text("Nama")),
                    DataColumn(label: Text("Tiara Novita Sari")),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("TTL")),
                        DataCell(Text("Bandung, 14 November 2003")),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("Umur")),
                        DataCell(Text("18 Tahun")),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("Alamat")),
                        DataCell(Text("JL.Palasari")),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}