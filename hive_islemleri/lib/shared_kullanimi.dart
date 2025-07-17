import 'package:flutter/material.dart';
import 'package:hive_islemleri/model/my_models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedKullanimi extends StatefulWidget {
  const SharedKullanimi({super.key});

  @override
  State<SharedKullanimi> createState() => _SharedKullanimiState();
}

class _SharedKullanimiState extends State<SharedKullanimi> {
  var _secilenCinsiyet = Cinsiyet.KADIN;
  var _secilenRenkler = <String>[];
  var ogrenciMi = false;
  late TextEditingController controller;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    controller = TextEditingController();
    _verileriOku();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences işlemleri"),
        backgroundColor: Colors.green.shade400,
        foregroundColor: Colors.blue.shade50,
      ),
      body: ListView(
        children: [
          ListTile(
            title: TextField(
              controller: controller,
              decoration: InputDecoration(labelText: "Adınızı Giriniz"),
            ),
          ),
          _buildRadioListTile("Kadın", Cinsiyet.KADIN),
          _buildRadioListTile("Erkek", Cinsiyet.ERKEK),
          _buildRadioListTile("İstemiyorum", Cinsiyet.DIGER),

          for (var item in Renkler.values) _buildChechkBoxListeTile(item),

          SwitchListTile(
            title: Text("Öğrenci misin"),
            value: ogrenciMi,
            onChanged: (ogrenciDeger) {
              setState(() {
                ogrenciMi = ogrenciDeger;
              });
            },
          ),
          TextButton(
            onPressed: () {
              _verileriKaydet();
            },
            child: Text("Kaydet"),
          ),
        ],
      ),
    );
  }

  Widget _buildRadioListTile(String title, Cinsiyet cinsiyet) {
    return RadioListTile(
      title: Text(title),
      value: cinsiyet,
      groupValue: _secilenCinsiyet,
      onChanged: (secilmisCinsiyet) {
        setState(() {
          _secilenCinsiyet = secilmisCinsiyet!;
        });
      },
    );
  }

  Widget _buildChechkBoxListeTile(Renkler renk) {
    return CheckboxListTile(
      title: Text(renk.name),
      value: _secilenRenkler.contains(renk.name),
      onChanged: (renkSecildiMi) {
        if (renkSecildiMi == false) {
          _secilenRenkler.remove(renk.name);
        } else {
          _secilenRenkler.add(renk.name);
        }
        setState(() {
          debugPrint(_secilenRenkler.toString());
        });
      },
    );
  }

  void _verileriKaydet() async {
    final String name = controller.text;
    final preferences = await SharedPreferences.getInstance();
    preferences.setString("name", name);
    preferences.setBool("ogrenci", ogrenciMi);
    preferences.setInt("cinsiyet", _secilenCinsiyet.index);
    preferences.setStringList("renkler", _secilenRenkler);
  }

  void _verileriOku() async {
    final preferences = await SharedPreferences.getInstance();
    controller.text = preferences.getString("name") ?? "";
    ogrenciMi = preferences.getBool("ogrenci") ?? false;
    _secilenCinsiyet = Cinsiyet.values[(preferences.getInt("cinsiyet") ?? 0)];
    _secilenRenkler = preferences.getStringList("renkler") ?? <String>[];
    setState(() {});
  }
}
