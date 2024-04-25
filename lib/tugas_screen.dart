import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class TugasScreen extends StatefulWidget {
  const TugasScreen({super.key});

  @override
  State<TugasScreen> createState() => _TugasScreenState();
}

class _TugasScreenState extends State<TugasScreen> {
  String? namaGambar;
  final player = AudioPlayer();

  gantiNama(String inputNama) {
    setState(() {
      namaGambar = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(
      title: Text('Tugass'),
      backgroundColor: Colors.orange,
    );

    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        width: widthApp,
        height: heightBody,
        child: Column(
          children: [
            Container(
              width: widthApp,
              height: heightBody * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(0),
                    width: heightBody * 0.3,
                    height: heightBody * 0.2,
                    color: Colors.blue,
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          print('Hutan');
                          gantiNama('Ini adalah gambar Gunung');
                          await player.setAsset('aset_media/suara/sahur.mp3');
                          await player.play();
                        },
                        child: Image.asset('aset_media/gambar/gb1.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    width: heightBody * 0.3,
                    height: heightBody * 0.2,
                    color: Colors.blue,
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          print('Hutan');
                          gantiNama('Ini adalah gambar Laut');
                          await player.setAsset('aset_media/suara/sp1.mp3');
                          await player.play();
                        },
                        child: Image.asset('aset_media/gambar/gb2.jpg'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: widthApp,
              height: heightBody * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(0),
                    width: heightBody * 0.3,
                    height: heightBody * 0.2,
                    color: Colors.blue,
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          print('Hutan');
                          gantiNama('Ini adalah gambar Hutan');
                          await player.setAsset('aset_media/suara/sp2.mp3');
                          await player.play();
                        },
                        child: Image.asset('aset_media/gambar/gb3.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    width: heightBody * 0.3,
                    height: heightBody * 0.2,
                    color: Colors.blue,
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          print('Hutan');
                          gantiNama('Ini adalah gambar Air Terjun');
                          await player.setAsset('aset_media/suara/sp3.mp3');
                          await player.play();
                        },
                        child: Image.asset('aset_media/gambar/gb4.jpg'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: widthApp,
              height: heightBody * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: heightBody * 0.3,
                    height: heightBody * 0.2,
                    color: Colors.blue,
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          print('Hutan');
                          gantiNama('Ini adalah gambar Pantai');
                          await player.setAsset('aset_media/suara/sp4.mp3');
                          await player.play();
                        },
                        child: Image.asset('aset_media/gambar/gb6.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: widthApp,
              height: heightBody * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    namaGambar ?? 'Click a Picture!!!',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
