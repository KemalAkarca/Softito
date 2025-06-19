import 'package:flutter/material.dart';
//19.06
class VisibilityKullanimi extends StatefulWidget {
  const VisibilityKullanimi({super.key});

  @override
  State<VisibilityKullanimi> createState() => _VisibilityKullanimiState();
}

class _VisibilityKullanimiState extends State<VisibilityKullanimi> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visibility Kullanımı"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 300,
              child: Visibility(
                visible: isVisible,
                child: Text(
                  "Selam herkese",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Text(isVisible ? "Yok Et" : "Getir"),
              style: ElevatedButton.styleFrom(
                backgroundColor: isVisible ? Colors.red : Colors.green,

                // backgroundColor: isVisible ==true? Colors.red : Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
