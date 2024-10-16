import 'package:flutter/material.dart';
import 'daftar_tugas.dart';
import 'status_penugasan.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Daftar Tugas',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: DaftarTugas(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Status Penugasan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StatusPenugasan(), // Ganti ini dari DaftarTugas ke StatusPenugasan
    );
  }
}
