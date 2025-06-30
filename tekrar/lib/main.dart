import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasarimTekrar()
    );
  }
}

class TasarimTekrar extends StatefulWidget {
  const TasarimTekrar({super.key});

  @override
  State<TasarimTekrar> createState() => _TasarimTekrarState();
}

class _TasarimTekrarState extends State<TasarimTekrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasarım tekrar"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.blue,
        child: Text("Merbaba"*100),
        constraints: BoxConstraints( 
          maxHeight: 200,
          maxWidth: 200,
          minHeight: 100,
          minWidth: 100
        ),
      ),
    );
  }
}

/* 
  Container:


 */


