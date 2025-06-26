import 'package:advanced_rent/models/cars.dart';
import 'package:advanced_rent/views/myCard.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List <String> imgCar = [
    "resimler/Ekran Resmi 2025-06-26 11.55.33.png",
    "/resimler/siyah_araba.png",
    "resimler/kamera.png",
    "resimler/kirmizi_motor.png",
    "resimler/saat.png",
    "resimler/gri_araba.png"
  ];


  
  @override
  Widget build(BuildContext context) {

  Cars p1 = Cars(carName: "Maserati GranTurismo",imgUrl: imgCar[1] , remainingTime: "1 Days", totalTicket: 100.000);
  Cars p2 = Cars(carName: "Aprilia Tuareg 660",imgUrl: imgCar[2] , remainingTime: "2 Days", totalTicket: 1.000);
  Cars p3 = Cars(carName: "Apple Watch Ultra",imgUrl: imgCar[3] , remainingTime: "2 Days", totalTicket: 500);
  Cars p4 = Cars(carName: "Maserati Ghibli",imgUrl: imgCar[4] , remainingTime: "12 Days", totalTicket: 50.000);
  Cars p5 = Cars(carName: "GoPro Hero 11 Black",imgUrl: imgCar[5] , remainingTime: "26 Days", totalTicket: 500);
  Cars p6 = Cars(carName: "Aprillia RSV4 ",imgUrl: imgCar[6] , remainingTime: "29 Days", totalTicket: 5.000);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Rent"),
      ),
      body: Mycard(),
    );
  }
}