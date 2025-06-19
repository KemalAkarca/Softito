import 'package:flutter/material.dart';

class CheckBoxKullanimi extends StatefulWidget {
  const CheckBoxKullanimi({super.key});

  @override
  State<CheckBoxKullanimi> createState() => _CheckBoxKullanimiState();
}

class _CheckBoxKullanimiState extends State<CheckBoxKullanimi> {
  bool dartDurum = false;
  bool kotlinDurum = false;
  String secimKotlin="Sevmiyor";
    String secimDart="Sevmiyor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Kullanımı"),
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: Text("Kotlin"),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.red, //Seçildiğinde chechk rengi
              activeColor: Colors.blue, //Seçildiğinde arka plan rengi
              value: kotlinDurum,
              onChanged: (gelenVeri) {
                setState(() {
                  kotlinDurum=gelenVeri!;
                  secimKotlin =kotlinDurum ?"Seviyor": "Sevmiyor";
                });
              },
            ),
            CheckboxListTile(
              title: Text("Dart"),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.red, //Seçildiğinde chechk rengi
              activeColor: Colors.blue, //Seçildiğinde arka plan rengi
              value: dartDurum,
              onChanged: (gelenVeri) {
                 setState(() {
                  dartDurum=gelenVeri!;
                  secimDart =dartDurum ?"Seviyor": "Sevmiyor";

                });
              },
            ),

            Text("Kullanıcı kotlini $secimKotlin , dartı $secimDart",style:TextStyle(fontSize: 24),)
          ],
        ),
      ),
    );
  }
}
