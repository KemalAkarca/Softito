import 'package:flutter/material.dart';

class ProgressbarSliderKullanimi extends StatefulWidget {
  const ProgressbarSliderKullanimi({super.key});

  @override
  State<ProgressbarSliderKullanimi> createState() =>
      _ProgressbarSliderKullanimiState();
}

class _ProgressbarSliderKullanimiState
    extends State<ProgressbarSliderKullanimi> {
  bool progressVisibility = false; //Progress değişkeni
  double ilerleme = 50; //Slider değişkeni
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ProgressBar - Slider",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 45, 194, 53),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: progressVisibility,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.green.shade600),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  progressVisibility = true;
                });
              },
              child: Text("Başlat"),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  progressVisibility = false;
                });
              },
              child: Text("Durdur"),
            ),

            Text("İlerleme :  ${ilerleme.toInt()}"),
            Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.black,
              thumbColor: Colors.green.shade200,
              max: 100,
              min: 0,
              value: ilerleme,
              onChanged: (double i) {
                setState(() {
                  ilerleme = i;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
