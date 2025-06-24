import 'package:ders8/appbar_kullanimi.dart';
import 'package:ders8/cardAndListTile_kullanimi.dart';
import 'package:ders8/forms_kullanimi.dart';
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
      home: CardandlisttileKullanimi(),
    );
  }
}
