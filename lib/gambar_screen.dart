import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class GambarScreen extends StatefulWidget {
  const GambarScreen({super.key});

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  String? namaMedia;
  final player = AudioPlayer();

  gantiNama(String inputNama) {
    setState(() {
      namaMedia = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaMedia ?? "Gambar Kosong"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(0),
        crossAxisCount: 3,
        children: [
          GestureDetector(
            onTap: () async {
              print('IG');
              gantiNama('Instagram');
              await player.setAsset('aset_media/suara/sahur.mp3');
              await player.play();
            },
            child: Card(
              child: Image.asset('aset_media/gambar/IG.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Facebook');
              gantiNama('facebook');
            },
            child: Card(
              child: Image.asset('aset_media/gambar/facebook.png'),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('tiktok');
              gantiNama('TikTok');
            },
            child: Card(
              child: Image.asset('aset_media/gambar/tiktok.png'),
            ),
          ),
          Card(),
          Card(),
          Card(),
          Card(),
          Card(),
        ],
      ),
    );
  }
}
