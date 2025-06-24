import 'package:flutter/material.dart';

class CardandlisttileKullanimi extends StatefulWidget {
  const CardandlisttileKullanimi({super.key});

  @override
  State<CardandlisttileKullanimi> createState() =>
      _CardandlisttileKullanimiState();
}

class _CardandlisttileKullanimiState extends State<CardandlisttileKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 120, 111),
        foregroundColor: Colors.white,
        title: Text("Card ve Listtile "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text("Güneş"),
                subtitle: Text("Güneş alt başlık"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardOrnek extends StatelessWidget {
  const CardOrnek({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 250,
            child: Card(
              color: Colors.teal,
              elevation: 10.0,
              shadowColor: Colors.tealAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                side: BorderSide(color: Colors.blue.shade300, width: 1),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Toplam Puan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 40),
                          Text(
                            "150",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
