import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class KoreksiTugas extends StatefulWidget {
  const KoreksiTugas({super.key});

  @override
  State<KoreksiTugas> createState() => _KoreksiTugasState();
}

class _KoreksiTugasState extends State<KoreksiTugas> {
  String? namaGambar;
  final player = AudioPlayer();

  gantiNama(String inputNama) {
    setState(() {
      namaGambar = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Koreksi Tugas 1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      print('Gunung');
                      gantiNama('Ini Adalah Gambar Gunung');
                      await player.setAsset('aset_media/suara/sp1.mp3');
                      await player.play();
                    },
                    child: Image.asset('aset_media/gambar/gb1.jpg'),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      print('Laut');
                      gantiNama('Ini Adalah Gambar Laut');
                      await player.setAsset('aset_media/suara/sp2.mp3');
                      await player.play();
                    },
                    child: Image.asset('aset_media/gambar/gb2.jpg'),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      print('Hutan');
                      gantiNama('Ini Adalah Gambar Hutan');
                      await player.setAsset('aset_media/suara/sp3.mp3');
                      await player.play();
                    },
                    child: Image.asset('aset_media/gambar/gb3.jpg'),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      print('Air Terjun');
                      gantiNama('Ini Adalah Gambar Air Terjun');
                      await player.setAsset('aset_media/suara/sp4.mp3');
                      await player.play();
                    },
                    child: Image.asset('aset_media/gambar/gb4.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(190, 0, 190, 0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      print('Pantai');
                      gantiNama('Ini Adalah Gambar Pantai');
                      await player.setAsset('aset_media/suara/sahur.mp3');
                      await player.play();
                    },
                    child: Image.asset('aset_media/gambar/gb5.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Text(
            namaGambar ?? 'Click a Picture',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
