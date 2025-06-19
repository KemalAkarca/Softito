import 'package:ders4/checkedbox_kullanimi.dart';
import 'package:ders4/switch_kullanimi.dart';
import 'package:ders4/toggle_button_kullanimi.dart';
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
      home:CheckBoxKullanimi(),
    );
  }
}
