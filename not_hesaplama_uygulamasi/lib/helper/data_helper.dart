import 'package:flutter/material.dart';
import 'package:not_hesaplama_uygulamasi/model/ders.dart';

class DataHelper {
  //harfler dropdown için liste
  static List<String> _tumDerslerinHarfleri() {
    return ["AA", "BA", "BB", "CB", "CC", "DC", "DD", "FD", "FF"];
  }

  static List<double> _tumKrediler() {
    return List.generate(10, (index) {
      return index + 1;
    });
  }

  static double _harfiNotaCevir(String harf) {
    switch (harf) {
      case "AA":
        return 4;
      case "BA":
        return 3.5;
      case "BB":
        return 3;
      case "CB":
        return 2.5;
      case "CC":
        return 2;
      case "DC":
        return 1.5;
      case "DD":
        return 1;
      case "FD":
        return 0.5;
      case "FF":
        return 0.0;

      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> dropdownMenuBilgisi() {
    return _tumDerslerinHarfleri()
        .map(
          (oAnGelenHarf) => DropdownMenuItem(
            value: _harfiNotaCevir(oAnGelenHarf),
            child: Text(oAnGelenHarf),
          ),
        )
        .toList();
  }

  static List<DropdownMenuItem<double>> dropdownKrediMenuBilgisi() {
    return _tumKrediler()
        .map(
          (oanGelenKredi) => DropdownMenuItem(
            value: oanGelenKredi,
            child: Text(oanGelenKredi.toInt().toString()),
          ),
        )
        .toList();
  }

  static List<Ders> tumEklenecekDersler = [];

  static dersEkle(Ders ders) {
    tumEklenecekDersler.add(ders);
  }

  static double ortalamaHesapla() {
    double toplamNot = 0;
    double toplamKredi = 0;
    tumEklenecekDersler.forEach((gelenders) {
      toplamNot = toplamNot + (gelenders.krediDegeri * gelenders.harfDegeri);
      toplamKredi += gelenders.krediDegeri;
    });

    return toplamNot / toplamKredi;
  }
}
