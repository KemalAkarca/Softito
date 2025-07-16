import 'dart:convert';

import 'package:api_islemleri/model/araba_model.dart';
import 'package:flutter/material.dart';

class LocalApiIslemleri extends StatefulWidget {
  const LocalApiIslemleri({super.key});

  @override
  State<LocalApiIslemleri> createState() => _LocalApiIslemleriState();
}

class _LocalApiIslemleriState extends State<LocalApiIslemleri> {
  late Future<List<ArabaModel>> arabalar;
  @override
  void initState() {
    super.initState();
    arabalar = arabalarJsonOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Api"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: FutureBuilder<List<ArabaModel>>(
          future: arabalarJsonOku(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ArabaModel> arabaList = snapshot.data!;
              return ListView.builder(
                itemCount: arabaList.length,
                itemBuilder: (context, index) {
                  ArabaModel araba = arabaList[index];
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 48,
                      child: Text(araba.kurulusYili),
                    ),
                    title: Text(araba.arabaAdi),
                    subtitle: Text(araba.ulke),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<List<ArabaModel>> arabalarJsonOku() async {
    try {
      String okunanString = await DefaultAssetBundle.of(
        context,
      ).loadString("data/arabalar.json");

      var jsonObject = jsonDecode(okunanString);

      List<ArabaModel> tumArabalar = (jsonObject as List)
          .map((arabaMap) => ArabaModel.fromJson(arabaMap))
          .toList();
      return tumArabalar;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
