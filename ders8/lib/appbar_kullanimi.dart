import 'package:flutter/material.dart';

class AppbarKullanimi extends StatefulWidget {
  const AppbarKullanimi({super.key});

  @override
  State<AppbarKullanimi> createState() => _AppbarKullanimiState();
}

class _AppbarKullanimiState extends State<AppbarKullanimi> {
  bool aramaYapiliyorMu =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 134, 234),
        foregroundColor: Colors.white,
        title: aramaYapiliyorMu ? TextField(style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.white),
        hintText: "Arama için birşey yazın",),
        onChanged: (aramaGirdisi){
          print("Arama sonucu $aramaGirdisi");
        },
       /*  onSubmitted: (aramaGirdisi){
          print("Sonuc: $aramaGirdisi");
        }, */
        )
        :Text("Appbar Arama"),

        actions: [
          aramaYapiliyorMu 
          ?
           IconButton(onPressed: (){
            setState(() {
              aramaYapiliyorMu =false;
            });
          }, icon: Icon(Icons.cancel))
          :
          IconButton(onPressed: (){
            setState(() {
              aramaYapiliyorMu =true;
            });
          }, icon: Icon(Icons.search))
        ],
      ),
    );
  }
}

class PopMenuAppBar extends StatelessWidget {
  const PopMenuAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 134, 234),
        foregroundColor: Colors.white,
        title: Column(
          children: [
            Text("Başlık", style: TextStyle(color: Colors.white, fontSize: 24)),
            Text(
              "Alt Başlık",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () => print("Menü Tıklanıldı"),
          icon: Icon(Icons.dehaze),
        ),
        //appbarın sağına action denir bir liste alır
        actions: [
          TextButton(
            onPressed: () {
              print("Çıkış Yapıldı");
            },
            child: Text("ÇIKIŞ", style: TextStyle(color: Colors.white)),
          ),
          IconButton(
            onPressed: () => print("Bilgi Alındı"),
            icon: Icon(Icons.info_outline),
          ),
          PopupMenuButton(
            child: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Güncelle"), value: 1),
              PopupMenuItem(child: Text("Sil"), value: 2),
            ],
            onSelected: (gelendeger) {
              if (gelendeger == 1) {
                debugPrint("Güncellendi");
              }
              if (gelendeger == 2) {
                debugPrint("Silindi");
              }
            },
          ),
        ],
      ),
    );
  }
}

class AppbarNormal extends StatelessWidget {
  const AppbarNormal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 134, 234),
        foregroundColor: Colors.black,
        title: Column(
          children: [
            Text("Başlık", style: TextStyle(color: Colors.white, fontSize: 24)),
            Text(
              "Alt Başlık",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () => print("Menü Tıklanıldı"),
          icon: Icon(Icons.dehaze),
        ),
        //appbarın sağına action denir bir liste alır
        actions: [
          TextButton(
            onPressed: () {
              print("Çıkış Yapıldı");
            },
            child: Text("ÇIKIŞ", style: TextStyle(color: Colors.white)),
          ),
          IconButton(
            onPressed: () => print("Bilgi Alındı"),
            icon: Icon(Icons.info_outline),
          ),
          IconButton(
            onPressed: () => print("Menü Açıldı"),
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
