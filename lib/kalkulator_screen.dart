import 'package:flutter/material.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  TextEditingController angka1Controller = TextEditingController();
  String tampilHasil = "Hasil kosong";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kalkulator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 127, 189, 12),
      ),
      body: Column(
        children: [
          TextField(controller: angka1Controller),
          ElevatedButton(
              onPressed: () {
                print(angka1Controller.text);
                setState(() {
                  tampilHasil = angka1Controller.text;
                });
              },
              child: Text('Tampil')),
          Text(tampilHasil),
        ],
      ),
    );
  }
}
