import 'package:flutter/material.dart';
import 'package:pizza_ovenly/introduction_page.dart/first_photo_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: FirstPhotoName(),
    );
  }
}
