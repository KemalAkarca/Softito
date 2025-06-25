

import 'dart:math';

import 'package:flutter/material.dart';

class Ornek3 extends StatelessWidget {
  const Ornek3({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ["Sevil Aydın", "Berke Özdemir", "Zehra Gümüşbıçak", "Aycan Mutlu", "Serpil Ulus", "Aydan Özdemir", "Zeynep Akmar", "Lütfü Sarı", "Ece Uslu", "Can Apaydın"];
    List<String> images = ["1.png","2.png","3.png","4.png","5.png","6.png","7.png","8.png","9.png","10.png",];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("List View Örnek 3",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context,index){
          return KisiCard(name: names[index], image: images[index]);
        }),
    );
  }
}

class KisiCard extends StatefulWidget {
  final String name;
  final String image;
  const KisiCard({required this.name, required this.image});

  @override
  State<KisiCard> createState() => _KisiCardState();
}

class _KisiCardState extends State<KisiCard> {
  @override
  Widget build(BuildContext context) {
    int tel =Random().nextInt(888888890)+111111111;
    return Card(
      color: Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
      child: SizedBox(
        height: 75,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("resimler/${widget.image}"),
            radius: 25,
          ),
          title: Text(widget.name),
          subtitle: Text("05$tel",style: TextStyle(color: Colors.white),),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}