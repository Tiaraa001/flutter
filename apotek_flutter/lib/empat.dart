import 'package:flutter/material.dart';

class Empat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Barang'),
        centerTitle: true,
        backgroundColor: Colors.green.shade800,
      ),
      body: Container(
        color: Colors.green.shade600,
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(3),
                height: 540,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade300,
                ),
                child: DataTable(
                  columns: const <DataColumn>[
                    DataColumn(label: Text("Name")),
                    DataColumn(label: Text("Email")),
                    DataColumn(label: Text("Role")),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: const <DataCell>[
                        DataCell(Text("Tiara Novita Sari")),
                        DataCell(Text("tiara@gmail.com")),
                        DataCell(Text("Admin")),
                      ],
                    ),
                     DataRow(
                      cells: const <DataCell>[
                        DataCell(Text("Adya Eka Amelia")),
                        DataCell(Text("adya@gmail.com")),
                        DataCell(Text("Kasir")),
                      ],
                    ),
                     DataRow(
                      cells: const <DataCell>[
                        DataCell(Text("Ike Vadila")),
                        DataCell(Text("ike@gmail.com")),
                        DataCell(Text("Kasir")),
                      ],
                    ),
                     DataRow(
                      cells: const <DataCell>[
                        DataCell(Text("Fitriyani Putri")),
                        DataCell(Text("fitri@gmail.com")),
                        DataCell(Text("Kasir")),
                      ],
                    ),
                     DataRow(
                      cells: const <DataCell>[
                        DataCell(Text("Hafsya Keika Mumtazah")),
                        DataCell(Text("hafsya@gmail.com")),
                        DataCell(Text("Kasir")),
                      ],
                    ),
                    // DataRow(
                    //   cells: <DataCell>[
                    //     DataCell(Text("1 X 6")),
                    //     DataCell(Text("6")),
                    //   ],
                    // ),
                    // DataRow(
                    //   cells: const <DataCell>[
                    //     DataCell(Text("1 X 7")),
                    //     DataCell(Text("7")),
                    //   ],
                    // ),
                    // DataRow(
                    //   cells: const <DataCell>[
                    //     DataCell(Text("1 X 8")),
                    //     DataCell(Text("8")),
                    //   ],
                    // ),
                    // DataRow(
                    //   cells: const <DataCell>[
                    //     DataCell(Text("1 X 9")),
                    //     DataCell(Text("9")),
                    //   ],
                    // ),
                    // DataRow(
                    //   cells: const <DataCell>[
                    //     DataCell(Text("1 X 10")),
                    //     DataCell(Text("10")),
                    //   ],
                    // ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
