import 'package:flutter/material.dart';

class YatayListview extends StatefulWidget {
  const YatayListview({super.key});

  @override
  State<YatayListview> createState() => _YatayListviewState();
}

class _YatayListviewState extends State<YatayListview> {
  List<String> ilceler = [
    "Bakırköy",
    "Levent",
    "Avcılar",
    "Esenler",
    "Bahçelievler",
    "Zeytinburnu",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yatay ListView"),
        backgroundColor: const Color.fromARGB(255, 4, 169, 9),
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        height: 100,

        child: ListView.builder(
          scrollDirection: Axis.horizontal, //////////////////////
          itemCount: ilceler.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.green.shade100,

              child: SizedBox(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ilceler[index],
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
