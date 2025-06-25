import 'package:flutter/material.dart';
import 'package:list_view_examples/views/ornek4.dart';
import 'package:list_view_examples/views/ornek5.dart';
import 'package:list_view_examples/views/ornek_1.dart';
import 'package:list_view_examples/views/ornek_2.dart';
import 'package:list_view_examples/views/ornek_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ornek5(),
    );
  }
}