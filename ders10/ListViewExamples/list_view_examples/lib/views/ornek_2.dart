import 'package:flutter/material.dart';

class Ornek2 extends StatelessWidget {
  const Ornek2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Örnek 2"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: HeroesCards(),
    );
  }
}

class HeroesCards extends StatefulWidget {
  const HeroesCards({super.key});

  @override
  State<HeroesCards> createState() => _HeroesCardsState();
}

class _HeroesCardsState extends State<HeroesCards> {
  List<String> heroes = ["Spider-Man", "Iron-Man", "Doomsday", "Doctor Strange", "Green Lantern", "Deadpool", "Hulk", "Thor", "Doctor Who", "Captain Marvel"];
  List<IconData> ikonlar = [Icons.cloud, Icons.power];
  bool isPushed = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: heroes.length,
      itemBuilder: (context,index){
      return ListTile(
        onTap: () {
          isPushed = !isPushed;
          setState(() {
            
          });
        },
        leading: CircleAvatar(
          backgroundColor: isPushed ? Colors.white : Colors.purple,
          child: Text("${index + 1}"),
        ),
        title: Text("${heroes[index]}"),
        subtitle: Text("${index + 1}-${heroes[index]}"),
        trailing: (index + 1) % 2 == 0 ? Icon(ikonlar[0]) :  Icon(ikonlar[1]) ,
      );
    });
  }
}