import 'package:flutter/material.dart';

class GridviewKullanimi extends StatefulWidget {
  const GridviewKullanimi({super.key});

  @override
  State<GridviewKullanimi> createState() => _GridviewKullanimiState();
}

class _GridviewKullanimiState extends State<GridviewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kemal's Sea Food Menu",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 186, 219, 247),
            fontSize: 28,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 34, 60),
        foregroundColor: Colors.white,
      ),
      body: Ornek2(),
    );
  }
}

class Ornek1 extends StatefulWidget {
  const Ornek1({super.key});

  @override
  State<Ornek1> createState() => _Ornek1State();
}

class _Ornek1State extends State<Ornek1> {
  List<String> img = [];
  List<String> yemkeler = [
    "Kızartma",
    "Karides",
    "Meze Çeşitleri",
    "Chesee Burger",
    "Salatalar",
    "Tavuklu Makarnalar",
    "Lazanya",
    "Özbek Pilavı",
    "Noodle",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 1,
      ),
      itemCount: yemkeler.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.blue.shade600,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                yemkeler[index],
                style: TextStyle(color: Colors.blue.shade50),
              ),
            ],
          ),
        );
      },
    );
  }
}

/* 
1) Bir satırda 2 tane elemanı olan bir gridview oluşacak 
2) elemanları container olacak, Bunda gölge,radius çerçeve olacak
3) Bu container ın bir arka plan resmi olacak soluk olacak üzerinde de yemeğin adı yazılacak

NOT: eşit elemana ait yemek resim listeleri olacak

 */
class Ornek2 extends StatefulWidget {
  const Ornek2({super.key});

  @override
  State<Ornek2> createState() => _Ornek2State();
}

class _Ornek2State extends State<Ornek2> {
  List<String> resim = [
    "/Users/a3-21/Desktop/Softitodersleri/ders11/resimler/y13.png",
    "/Users/a3-21/Desktop/Softitodersleri/ders11/resimler/y14.png",
    "/Users/a3-21/Desktop/Softitodersleri/ders11/resimler/y15.png",
    "/Users/a3-21/Desktop/Softitodersleri/ders11/resimler/y16.png",
    "/Users/a3-21/Desktop/Softitodersleri/ders11/resimler/y25.png",

    "/Users/a3-21/Desktop/Softitodersleri/ders11/resimler/y19.png",
    "/Users/a3-21/Desktop/Softitodersleri/ders11/resimler/y20.png",
    "/Users/a3-21/Desktop/Softitodersleri/ders11/resimler/y21.png",
    "/Users/a3-21/Desktop/Softitodersleri/ders11/resimler/y22.png",
    "/Users/a3-21/Desktop/Softitodersleri/ders11/resimler/y25.png",
  ];

  List<String> yemkeler = [
    "Kalamar",
    "Karides ",
    "Meze Çeşitleri",
    "CheeseBurger",
    "Salata Çeşitleri",
    "Tavuklu Makarnalar",
    "Lazanya",
    "Özbek Pilavı",
    "Noodle",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 2,
      ),
      itemCount: yemkeler.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SeaFoodDetay(
                  yemekadi: yemkeler[index],
                  yemekresim: resim[index],
                ),
              ),
            );
          },
          child: Card(
            child: Container(
              height: 150,
              child: Text(
                yemkeler[index],
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade50,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 29,
                      offset: Offset.zero,
                    ),
                  ],
                ),
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("${resim[index]}"),
                  fit: BoxFit.cover,
                  opacity: 0.6,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 29,
                    offset: Offset.zero,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class SeaFoodDetay extends StatefulWidget {
  final String yemekadi;
  final String yemekresim;
  const SeaFoodDetay({required this.yemekadi, required this.yemekresim});

  @override
  State<SeaFoodDetay> createState() => _SeaFoodDetayState();
}

class _SeaFoodDetayState extends State<SeaFoodDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 186, 219, 247),
      appBar: AppBar(
        title:Text(
          widget.yemekadi,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 186, 219, 247),
            fontSize: 28,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 34, 60),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.yemekresim),
            SizedBox(height: 20,),
            Text(widget.yemekadi,style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){

              Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => Ornek2(),
              ),
              );
            
            }, child:Center(
              child: Container(
                child: Text("Geri DÖn"),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
