import 'package:flutter/material.dart';

class RadiobuttonKullanimi extends StatefulWidget {
  const RadiobuttonKullanimi({super.key});

  @override
  State<RadiobuttonKullanimi> createState() => _RadiobuttonKullanimiState();
}

class _RadiobuttonKullanimiState extends State<RadiobuttonKullanimi> {
  int radioDeger = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Kullanımı"),
        backgroundColor: Colors.green.shade600,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
              title: Text("Kadın"),
              value: 1,
              activeColor: Colors.red,
              groupValue: radioDeger,
              onChanged: (int? gelenVeri){
                setState(() {
                  radioDeger=gelenVeri!;
                });
              },
            ),
            RadioListTile(
              title: Text("Erkek"),
              value: 2,
              activeColor: Colors.red,
              groupValue: radioDeger,
              onChanged: (int? gelenVeri){
                setState(() {
                  radioDeger=gelenVeri!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
