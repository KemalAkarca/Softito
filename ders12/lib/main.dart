import 'package:ders12/button_navigation_bar_kullanimi.dart';
import 'package:ders12/drawer_kullanimi.dart';
import 'package:ders12/featureBuilder_custom_ozel_listeleme.dart';
import 'package:ders12/futureBuilder_kullanimi.dart';
import 'package:ders12/futurebuilder_listeleme.dart';
import 'package:ders12/tapbar_kullanimi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerKullanimi(),
    );
  }
}

