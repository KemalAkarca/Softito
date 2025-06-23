import 'package:flutter/material.dart';

class PopupmenuButtonKullanimi extends StatefulWidget {
  const PopupmenuButtonKullanimi({super.key});

  @override
  State<PopupmenuButtonKullanimi> createState() =>
      _PopupmenuButtonKullanimiState();
}

class _PopupmenuButtonKullanimiState extends State<PopupmenuButtonKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup Menu"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PopupMenuButton(
              onCanceled: () => print("Seçim yapılmadı"),
              onSelected: (value) {
                if(value==1){
                  print("Silindi");
                }
                if(value==2){
                  print("Güncellendi");
                }
                

              },
              child: Icon(Icons.open_in_new),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 1,
                    child: Text("Sil", style: TextStyle(color: Colors.red)),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text("Güncelle", style: TextStyle(color: Colors.red)),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}
