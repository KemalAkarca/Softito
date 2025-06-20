import 'package:ders5/faidInImage_kullanimi.dart';
import 'package:ders5/progressBar_slider_kullanimi.dart';
import 'package:ders5/webWiew_kullanimi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FaidinimageKullanimi(),
    );
    
  }
}
