import 'package:flutter/material.dart';
import 'package:sayac_state_uygulamasi/sayac_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SayacUygulamasi(),
    );
  }
}

class SayacUygulamasi extends StatelessWidget {
  SayacUygulamasi({super.key});
  final SayacWidgetKey = GlobalKey<SayacWidgetState>();

  @override
  Widget build(BuildContext context) {
    debugPrint("buildÇalıştı");
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayac Uygulaması"),
        backgroundColor: Colors.amber.shade800,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Butona Basılma Miktarı", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            SayacWidget(key: SayacWidgetKey),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          SayacWidgetKey.currentState!.arttir();
        },
      ),
    );
  }
}
