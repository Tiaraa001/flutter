import 'package:flutter/material.dart';

class Tiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Satuan'),
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
                    DataColumn(label: Text("Nama Satuan")),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: const <DataCell>[
                        DataCell(Text("Pcs")),
                      ],
                    ),
                     DataRow(
                      cells: const <DataCell>[
                        DataCell(Text("Pcs")),
                      ],
                    ),
                     DataRow(
                      cells: const <DataCell>[
                        DataCell(Text("Pcs")),
                      ],
                    ),
                     DataRow(
                      cells: const <DataCell>[
                        DataCell(Text("Kaplet")),
                      ],
                    ),
                     DataRow(
                      cells: const <DataCell>[
                        DataCell(Text("Kaplet")),
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
