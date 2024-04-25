import 'package:flutter/material.dart';
import 'package:ngetestok/gambar_screen.dart';
import 'package:ngetestok/list_screen.dart';
import 'package:ngetestok/tugas_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: ListScreen(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('beranda rumah'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Text('Hello word'),
    );
  }
}
