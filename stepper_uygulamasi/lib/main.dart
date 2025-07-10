import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyStepperApp());
  }
}

class MyStepperApp extends StatefulWidget {
  const MyStepperApp({super.key});

  @override
  State<MyStepperApp> createState() => _MyStepperAppState();
}

class _MyStepperAppState extends State<MyStepperApp> {
  int _aktifStep = 0;
  String kullaniciIsmi = "", mail = "", sifre = "";
  late List<Step> tumStepler;
  var keyName = GlobalKey<FormFieldState>();
  var keyMail = GlobalKey<FormFieldState>();
  var keySifre = GlobalKey<FormFieldState>();
  bool hata = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _tumStepler();
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Uygulaması"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Stepper(
          currentStep: _aktifStep,
          onStepTapped: (tiklananStepIndex) {
            setState(() {
              _aktifStep = tiklananStepIndex;
            });
          },
          onStepContinue: () {
            setState(() {
              _ileriButonununKontrolu();
            });
          },
          onStepCancel: () {
            setState(() {});
            if (_aktifStep > 0) {
              _aktifStep--;
            } else {
              _aktifStep == 0;
            }
          },
          steps: _tumStepler(),
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: Text("Username Başlık"),
        subtitle: Text("Username Altbaşlık"),
        state: stateleriAyarla(0),
        isActive: true,
        content: TextFormField(
          onSaved: (gelenName) {
            kullaniciIsmi = gelenName!;
          },
          key: keyName,
          validator: (girilenUserName) {
            if (girilenUserName!.length < 6) {
              return "En az 6 karakter giriniz";
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            labelText: "Username",
            hintText: "Kullanıcı Adı",
            border: OutlineInputBorder(),
          ),
        ),
      ),
      Step(
        title: Text("Mail Başlık"),
        subtitle: Text("Mail Altbaşlık"),
        state: stateleriAyarla(1),
        isActive: true,
        content: TextFormField(
          onSaved: (gelenMail) {
            mail = gelenMail!;
          },
          key: keyMail,
          validator: (girilenmail) {
            if (!girilenmail!.contains("@")) {
              return "Geçerli mail giriniz";
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "E-mail",
            hintText: "Mail giriniz",
          ),
        ),
      ),
      Step(
        title: Text("Şifre Başlık"),
        subtitle: Text("Şifre Altbaşlık"),
        state: stateleriAyarla(2),
        isActive: true,
        content: TextFormField(
          onSaved: (gelenSifre) {
            sifre = gelenSifre!;
          },
          key: keySifre,
          validator: (girilenUserName) {
            if (girilenUserName!.length < 8) {
              return "En az 8 karakter giriniz";
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Password",
            hintText: "Şifreyi giriniz",
          ),
        ),
      ),
    ];

    return stepler;
  }

  StepState stateleriAyarla(int oankiStep) {
    if (_aktifStep == oankiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _ileriButonununKontrolu() {
    switch (_aktifStep) {
      //0.indexin başlangıcı
      case 0:
        if (keyName.currentState!.validate()) {
          keyName.currentState!.save();
          hata = false;
          _aktifStep = 1;
        } else {
          hata = true;
        }
        break;
      //0.İndexin bitişi

      //1.indexin başlangıcı
      case 1:
        if (keyMail.currentState!.validate()) {
          keyMail.currentState!.save();
          hata = false;
          _aktifStep = 2;
        } else {
          hata = true;
        }
        break;
      //1.İndexin bitişi

      //2.indexin başlangıcı
      case 2:
        if (keySifre.currentState!.validate()) {
          keySifre.currentState!.save();
          hata = false;
          _aktifStep = 2;
          formTamamlandi();
        } else {
          hata = true;
        }
        break;
      //2.İndexin bitişi
    }
  }

  void formTamamlandi() {
    String result =
        "Girilen değerler: isim =>$kullaniciIsmi, email => $mail, şifre => $sifre";
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.indigo,
        content: Text(
          result,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
