import 'package:flutter/material.dart';
import 'package:not_hesaplama_uygulamasi/constants/sabitler.dart';
import 'package:not_hesaplama_uygulamasi/helper/data_helper.dart';
import 'package:not_hesaplama_uygulamasi/model/ders.dart';
import 'package:not_hesaplama_uygulamasi/widgets/ders_listesi.dart';
import 'package:not_hesaplama_uygulamasi/widgets/ortalama_goster.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({super.key});

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  final formKey =
      GlobalKey<FormState>(); //Formdaki veriyi almak için kullanacağımız key

  double secilenHarfDeger = 4;
  double secilenKrediDeger = 1;
  String girilenDersAdi = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(Sabitler.baslikText, style: Sabitler.baslikStyle),
        foregroundColor: Sabitler.baslikRengi,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              //Form kısmı
              Expanded(flex: 2, child: _buildForm()),
              Expanded(
                flex: 1,
                child: OrtalamaGoster(
                  ortalama: DataHelper.ortalamaHesapla(),
                  dersSayisi: DataHelper.tumEklenecekDersler.length,
                ),
              ),
            ],
          ),
          //Liste Gelecek
          Expanded(
            child: DersListesi(
              onElemanCikarildi: (index) {
                DataHelper.tumEklenecekDersler.removeAt(index);
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          //TextFromField gelecek
          _buildTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Harf DropdownButton
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: _buildHarfler(),
                ),
              ),
              //kredi DropdownButton gelecek,
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),

                  child: _buildKrediler(),
                ),
              ),
              //İconbutton gelecek
              IconButton(
                onPressed: () {
                  _dersEkleveOrtalamaHesaplama();
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Sabitler.anaRenk,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextFormField() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: TextFormField(
        validator: (s) {
          if (s!.isEmpty) {
            return "Ders Adının Giriniz!";
          } else {
            null;
          }
        },
        onSaved: (gelenDersAdi) {
          setState(() {
            gelenDersAdi = girilenDersAdi;
          });
        },
        decoration: InputDecoration(
          hintText: "Matematik",
          border: OutlineInputBorder(borderRadius: Sabitler.borderRadius),
          filled: true,
          fillColor: Sabitler.anaRenk.shade50,
        ),
      ),
    );
  }

  _buildHarfler() {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade50,
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        focusColor: Colors.transparent,
        underline: Container(),
        value: secilenHarfDeger,

        items: DataHelper.dropdownMenuBilgisi(),
        onChanged: (deger) {
          setState(() {
            secilenHarfDeger = deger!;
          });
        },
      ),
    );
  }

  _buildKrediler() {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade50,
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        focusColor: Colors.transparent,
        underline: Container(),
        value: secilenKrediDeger,

        items: DataHelper.dropdownKrediMenuBilgisi(),
        onChanged: (deger) {
          setState(() {
            secilenKrediDeger = deger!;
          });
        },
      ),
    );
  }

  void _dersEkleveOrtalamaHesaplama() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Ders eklenecekDers = Ders(
        ad: girilenDersAdi,
        harfDegeri: secilenHarfDeger,
        krediDegeri: secilenKrediDeger,
      );
      DataHelper.dersEkle(eklenecekDers);

      setState(() {
        //başarılıysa diye if in içine alıyoruz set state build etsin diye.
      });
    }
  }
}
