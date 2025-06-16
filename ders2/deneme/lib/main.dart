import 'package:flutter/material.dart';

void main() {
  runApp(const MyProject());
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyExamples());
  }
}

class MyExamples extends StatelessWidget {
  const MyExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "REHBER",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Example2(),
    );
  }
}

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          child: Text("ÖRNEK 1"),
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.red,
                height: 180,
                child: Text(
                  "Ben %30",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                color: Colors.teal,
                height: 180,
                child: Text(
                  "Ben %70",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
        Divider(color: Colors.grey.shade700, thickness: 5),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.purple.shade300,
                height: 180,
                child: Text(
                  "Ben %20",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.pink,
                height: 180,
                child: Text(
                  "Ben %30",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.red,
                height: 180,
                child: Text(
                  "Ben %50",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
        Divider(thickness: 5, color: Colors.grey.shade700),
      ],
    );
  }
}

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Başlık bölüm başlangıç
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Align(
                child: Text(
                  "Telefon Listesi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
              ),
            ),
            Divider(thickness: 2, indent: 36, endIndent: 36, height: 0),
          ],
        ),

        //Başlık bölüm bitiş

        //İçerik başlangıç
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MyCard(name: "Kemal Akarca",firstIcon: Icons.person,lastIcon: Icons.arrow_circle_right,),
                  MyCard(name: "Zeynep Akarca",firstIcon: Icons.person,lastIcon: Icons.arrow_circle_right,),
                  MyCard(name: "Derya Akarca",firstIcon: Icons.person,lastIcon: Icons.arrow_circle_right,),
                  MyCard(name: "Çetin Akarca",firstIcon: Icons.person,lastIcon: Icons.arrow_circle_right,),
                  MyCard(name: "Burcu Düzen",firstIcon: Icons.person,lastIcon: Icons.arrow_circle_right,),
                  MyCard(name: "Doğukan Veziroğlu",firstIcon: Icons.person,lastIcon: Icons.arrow_circle_right,),
                  MyCard(name: "İlay Aksoy",firstIcon: Icons.person,lastIcon: Icons.arrow_circle_right,),
                  MyCard(name: "Anıl Uçar",firstIcon: Icons.person,lastIcon: Icons.arrow_circle_right,),
                  MyCard(name: "Önder Ömer",firstIcon: Icons.person,lastIcon: Icons.arrow_circle_right,),
                  
                ],
              ),
            ),
          ),
        ),

        //İçerik bitiş
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  final String name;
  final IconData firstIcon;
  final IconData lastIcon;
  

  const MyCard({
    required this.name,
    required this.firstIcon,
    required this.lastIcon,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  border: Border.all(color: Colors.blueGrey, width: 3),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [BoxShadow(color: Colors.grey,offset: Offset(8, 8),blurRadius: 3)]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //İCON alanı
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        firstIcon,
                        color: Colors.grey.shade700,
                        size: 56,
                      ),
                    ),
                    // Yazı Alanı
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //Icon ok alanı
                    Icon(
                      lastIcon,
                      color: Colors.white,
                      size: 36,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
