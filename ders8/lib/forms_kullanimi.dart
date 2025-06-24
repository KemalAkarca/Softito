import 'package:flutter/material.dart';

class FormsKullanimi extends StatefulWidget {
  const FormsKullanimi({super.key});

  @override
  State<FormsKullanimi> createState() => _FormsKullanimiState();
}

class _FormsKullanimiState extends State<FormsKullanimi> {
   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //Validate kontrolü için gereken key
  TextEditingController tfKullaniciAdi = TextEditingController();
  //TextField dan kullanıcı adı verisinş almamızı sağlayan değişken
  TextEditingController tfSifre = TextEditingController();
  //TextField dan sifre verisini almamızı sağlayan değişken
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("FORM KULLANIMI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    //Kullanıcı adı control başlangıcı
                    TextFormField(
                      controller: tfKullaniciAdi,
                      decoration: InputDecoration(hintText: "Kullanıcı adi"),
                      validator: (tfKullaniciAdi) {
                        if (tfKullaniciAdi!.isEmpty) {
                          return "Kullanıcı adı boş girilemez";
                        } else {
                          return null;
                        }
                      },
                    ),
                    //Kullanıcı adı control sonu
                    SizedBox(height: 15),
                    //Şifre control başlangıcı
                    TextFormField(
                      controller: tfSifre,
                      decoration: InputDecoration(hintText: "Şifre"),
                      validator: (tfSifre) {
                        if (tfSifre!.isEmpty) {
                          return "Şifre boş girilemez";
                        }
                        if (tfSifre.length < 6) {
                          return "Şifre en az 6 karakter olmalı";
                        } else {
                          return null;
                        }
                      },
                    ),
                    //Şifre control sonu
                    SizedBox(height: 18),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 14,
                        ),
                        backgroundColor: const Color.fromARGB(255, 234, 227, 227),
                        foregroundColor: const Color.fromARGB(255, 49, 93, 225),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ), onPressed: () { //formun o anki durumunun validate bakar. Eğer bu ifadenin sonucu true ise demekki validate null dönmüş demektir
                                    // O zaman işlem yapılır ama eğer false ise validate çalışır ve o yazdığımız stringler döner
                      bool kontrolSonuc= formKey.currentState!.validate();
                      if(kontrolSonuc){
                        String userName = tfKullaniciAdi.text;
                        String userPass = tfSifre.text;
                        print("Kullancı adı: $userName - Şifre: $userPass");
                      } 

                      }, child: Text("Giriş Yap"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Form da validate yapabilmek için GlobalKey türünde bir key vardır.Bu key bize validate yapmamızı sağlar.



