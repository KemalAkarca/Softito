import 'package:flutter/material.dart';
//19.06

class SwitchKullanimi extends StatefulWidget {
  const SwitchKullanimi({super.key});

  @override
  State<SwitchKullanimi> createState() => _SwitchKullanimiState();
}

class _SwitchKullanimiState extends State<SwitchKullanimi> {
  bool switchKontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Kullanımı"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              thumbIcon: WidgetStateProperty.resolveWith((icon) {
                if (switchKontrol == false) {
                  return Icon(Icons.sunny);
                } else {
                  return Icon(Icons.nightlight_round);
                }
              }),
              activeColor:
                  Colors.blue.shade400, // Aktif durumdayken topun rengi
              activeTrackColor:
                  Colors.blue.shade800, // Aktif durumdayken arka plan rengi
              inactiveThumbColor:
                  Colors.amber, // Seçili olmama durumunda topun rengi
              inactiveTrackColor: Colors
                  .amber
                  .shade100, // Seçili olmama durumunda arka plan rengi
              value: switchKontrol,
              //İlk baştaki anlık durumu ve değişimi için, yeni value: switch butonunun seçilimi değil mi o değişimi gösterir
              onChanged: (gelenVeri) {
                // gelen veri switch in anlık değerini verir taşır // onChanged : Kullanıcı switche tıkladığında tetiklenir.gelenVeri,
                // yeni durum (true -false) alınır ve switchKontrol güncellenir.
                setState(() {
                  switchKontrol = gelenVeri;
                  // switchKontrol değişkeni bize bu gelen değeri buranın dışında da kullanım esnekliği sağlar.
                  print(gelenVeri);
                });
              },
            ),

            Text(switchKontrol ? "Gece Modu" : "Gündüz"),
          ],
        ),
      ),
    );
  }
}
