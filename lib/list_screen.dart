import 'package:flutter/material.dart';
import 'package:ngetestok/gambar_screen.dart';
import 'package:ngetestok/kalkulator_screen.dart';
import 'package:ngetestok/koreksi_tugas.dart';
import 'package:ngetestok/nilaiakhir_screen.dart';
import 'package:ngetestok/payment_details.dart';
import 'package:ngetestok/tugas_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => KalkulatorScreen(),
                  ),
                );
              },
              child: Text('Kalkulator')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => GambarScreen(),
                  ),
                );
              },
              child: Text('Gambar')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => TugasScreen(),
                ));
              },
              child: Text('Tugas')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => NilaiAkhir(),
                ));
              },
              child: Text('Nilai')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => KoreksiTugas(),
                ));
              },
              child: Text('KoreksiTugas1')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => PaymentDetails(),
                ));
              },
              child: Text('Payment')),
        ],
      ),
    );
  }
}
