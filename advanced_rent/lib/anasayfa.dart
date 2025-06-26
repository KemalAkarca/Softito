import 'dart:ffi';

import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List <String> resimler = [
    "resimler/gri_araba.png",
    "resimler/kamera.png",
    "resimler/kirmizi_motor.png",
    "resimler/motor.png",
    "resimler/saat.png",
    "resimler/siyah_araba.png",
  ];

  List <String> urunler=[
    "Maserati Ghibli",
    "GoPro Hero 11 Black",
    "Aprilla RSV4",
    "Aprilla Tuareg660",
    "Apple Watch Ultra",
    "Maserati GranTurismo"
  ];

  List <String> remainingTime =[
    "12 Days",
    "26 Days",
    "29 Days",
    "2 Days",
    "2 Days",
    "1 Days"
  ];

  List <Double> totalTicket = [
    

  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}