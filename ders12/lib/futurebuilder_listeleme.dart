import 'package:flutter/material.dart';

class FuturebuilderListeleme extends StatefulWidget {
  const FuturebuilderListeleme({super.key});

  @override
  State<FuturebuilderListeleme> createState() => _FuturebuilderListelemeState();
}

class _FuturebuilderListelemeState extends State<FuturebuilderListeleme> {
  Future<List<String>> verileriGetir() async {
    List<String> ulkeler = [
      "Türkiye",
      "Almanya",
      "Japonya",
      "Güney Kore",
      "Singapur",
      "Azerbaycan",
    ];
    return ulkeler;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder Listeleme"),
        backgroundColor: const Color.fromARGB(255, 16, 247, 28),
        foregroundColor: Colors.black,
      ),
      body: FutureBuilder(
        future: verileriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<String> ulkeListesi = snapshot.data!;
            return ListView.builder(
              itemCount: ulkeListesi.length,
              itemBuilder: (context, index) {
                String ulke = ulkeListesi[index]; // 
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: SizedBox(height: 55,
                    child: Row(
                      children: [
                        Text(ulke),
                      ],
                    ),),
                    
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
