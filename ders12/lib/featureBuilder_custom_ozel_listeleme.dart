import 'dart:math';

import 'package:ders12/models/yemek.dart';
import 'package:ders12/yemek_detay.dart';
import 'package:flutter/material.dart';

class FeaturebuilderCustomOzelListeleme extends StatefulWidget {
  const FeaturebuilderCustomOzelListeleme({super.key});

  @override
  State<FeaturebuilderCustomOzelListeleme> createState() =>
      _FeaturebuilderCustomOzelListelemeState();
}

class _FeaturebuilderCustomOzelListelemeState
    extends State<FeaturebuilderCustomOzelListeleme> {
  Future<List<Yemek>> yemekleriGetir() async {
    List<Yemek> yemekListeisi = <Yemek>[];
    Yemek y1 = Yemek(
      yemekId: Random().nextInt(99999),
      yemekAdi: "Izgara Köfte",
      yemekResimAdi: "resimler/ızgarakofte.png",
      yemekFiyat: 275,
    );
    Yemek y2 = Yemek(
      yemekId: Random().nextInt(99999),
      yemekAdi: "İskender",
      yemekResimAdi: "resimler/iskender.png",
      yemekFiyat: 430,
    );
    Yemek y3 = Yemek(
      yemekId: Random().nextInt(99999),
      yemekAdi: "Karışık Kebap",
      yemekResimAdi: "resimler/karisikkebap.png",
      yemekFiyat: 900,
    );
    Yemek y4 = Yemek(
      yemekId: Random().nextInt(99999),
      yemekAdi: "Kuzu Şiş",
      yemekResimAdi: "resimler/kuzusis.png",
      yemekFiyat: 650,
    );
    Yemek y5 = Yemek(
      yemekId: Random().nextInt(99999),
      yemekAdi: "Sarma Ciğer",
      yemekResimAdi: "resimler/sarmaciger.png",
      yemekFiyat: 300,
    );
    Yemek y6 = Yemek(
      yemekId: Random().nextInt(99999),
      yemekAdi: "Tantuni",
      yemekResimAdi: "resimler/tantuni.png",
      yemekFiyat: 220,
    );

    yemekListeisi.add(y1);
    yemekListeisi.add(y2);
    yemekListeisi.add(y3);
    yemekListeisi.add(y4);
    yemekListeisi.add(y5);
    yemekListeisi.add(y6);
    return yemekListeisi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 214, 214),

      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          "Yemek Uygulaması- Future Builder",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
        future: yemekleriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Yemek> yemekler = snapshot.data!;

            return ListView.builder(
              itemCount: yemekler.length,
              itemBuilder: (context, index) {
                Yemek yemek = yemekler[index];
                return GestureDetector(
                  onTap: () {
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> YemekDetay()),);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YemekDetay(yemek: yemek),
                      ),
                    );
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          // yemek fotoğrafı
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              yemek.yemekResimAdi,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          // yemek ismi  ve fiyatı
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                yemek.yemekAdi,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // yemek fiyat
                              Text(
                                yemek.yemekFiyat.toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_down_rounded),
                        ],
                      ),
                    ),
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
