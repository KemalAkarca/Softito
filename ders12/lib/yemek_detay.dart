import 'dart:ui';

import 'package:ders12/models/yemek.dart';
import 'package:flutter/material.dart';

class YemekDetay extends StatefulWidget {
  final Yemek yemek;
  const YemekDetay({required this.yemek});

  @override
  State<YemekDetay> createState() => _YemekDetayState();
}

class _YemekDetayState extends State<YemekDetay> {
  bool isdone = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 214, 214),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          widget.yemek.yemekAdi,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //resim
            SizedBox(
              height: 300,
              width: 350,
              child: Image.asset(widget.yemek.yemekResimAdi, fit: BoxFit.cover),
            ),

            // yazı
            Padding(
              padding: const EdgeInsets.only(top: 14.0, bottom: 8.0),
              child: Text(
                widget.yemek.yemekAdi,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            //fiyat
            Text(
              "${widget.yemek.yemekFiyat} ₺",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 100),

            //button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isdone =!isdone;
                });
              },
              child: Text(isdone ? "Siparişiniz alındı":"Sipariş ver"),
              style: ElevatedButton.styleFrom(
                backgroundColor: isdone? Colors.red.shade800 : Colors.black,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 125, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
