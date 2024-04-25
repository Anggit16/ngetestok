import 'package:flutter/material.dart';

class NilaiAkhir extends StatefulWidget {
  const NilaiAkhir({super.key});

  @override
  State<NilaiAkhir> createState() => _NilaiAkhirState();
}

class _NilaiAkhirState extends State<NilaiAkhir> {
  String? nilaiAkhirHuruf;
  double? nilaiRataRata;

  TextEditingController? inputNilaiTugas = TextEditingController();
  TextEditingController? inputNilaiUTS = TextEditingController();
  TextEditingController? inputNilaiUAS = TextEditingController();

  hitungNilai() {
    setState(() {
      int nilai1 = int.parse(inputNilaiTugas?.text ?? '0');
      int nilai2 = int.parse(inputNilaiUTS?.text ?? '0');
      int nilai3 = int.parse(inputNilaiUAS?.text ?? '0');
      nilaiRataRata = (nilai1 + nilai2 + nilai3) / 3;

      konvesiHuruf(nilaiRataRata ?? 0);
    });
  }

  konvesiHuruf(double nilai) {
    if (nilai >= 90 && nilai <= 100) {
      nilaiAkhirHuruf = 'Nilai A';
    } else if (nilai >= 70 && nilai <= 89) {
      nilaiAkhirHuruf = ' Nilai B';
    } else if (nilai >= 50 && nilai <= 69) {
      nilaiAkhirHuruf = 'Nilai C';
    } else {
      nilaiAkhirHuruf = 'Belum Lulus';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai Akhir'),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Text(
            nilaiAkhirHuruf ?? 'Nilai Akhir',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          TextFormField(
              decoration: InputDecoration(
                labelText: 'Masukan Nilai Tugas',
                hintText: 'Nilai antara 0-100',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
              controller: inputNilaiTugas),
          SizedBox(height: 20),
          TextFormField(
              decoration: InputDecoration(
                labelText: 'Masukan Nilai UTS',
                hintText: 'Nilai antara 0-100',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                prefixIcon: Icon(Icons.task),
                suffixIcon: Icon(Icons.check),
              ),
              controller: inputNilaiUTS),
          SizedBox(height: 20),
          TextFormField(
              decoration: InputDecoration(
                labelText: 'Masukan Nilai UAS',
                hintText: 'Nilai antara 0-100',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
              controller: inputNilaiUAS),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                hitungNilai();
              },
              child: Text('Hitung Nilai')),
          Text('Nilai Rata-rata'),
          Text(nilaiRataRata?.toString() ?? '0'),
        ],
      ),
    );
  }
}
