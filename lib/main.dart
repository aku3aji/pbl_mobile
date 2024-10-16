import 'package:flutter/material.dart';
import 'daftar_tugas.dart';
import 'status_penugasan.dart';
import 'status_tugas.dart';
import 'proses_pengerjaan.dart';
import 'riwayat_tugas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DaftarTugas(),
      // home: StatusTugas(),
      // home: ProsesPengerjaan(),
      // home: StatusPenugasan(),
      // home: RiwayatTugas(),
    );
  }
}
