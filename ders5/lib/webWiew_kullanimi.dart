import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebwiewKullanimi extends StatefulWidget {
  const WebwiewKullanimi({super.key});

  @override
  State<WebwiewKullanimi> createState() => _WebwiewKullanimiState();
}

class _WebwiewKullanimiState extends State<WebwiewKullanimi> {

  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Webview Kullanımı"),
          backgroundColor: Colors.blue.shade800,
          foregroundColor: Colors.white,
        ),
    );
  }
}