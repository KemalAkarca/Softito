import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: myProject());
  }
}

class myProject extends StatelessWidget {
  const myProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İnput Tekrar"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: TextFormFieldKullanimi(),
    );
  }
}

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({super.key});

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  late final String _email, _password, _userName;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
          key: _formkey,
          //validate işlemini ne zaman çalıştıracağını belirler
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              //TextEditingcontroller a ihtiyaç duymaz çünkü onSaved vardır
              TextFormField(
                onSaved: (gelenUserName) {
                  _userName = gelenUserName!;
                },
                //varsayılan değeri tanımlar
                //initialValue: "kemalakarca",
                decoration: InputDecoration(
                  //hata mesajlarının rengini değiştrir.
                  errorStyle: TextStyle(color: Colors.orange),
                  labelText: "Kullanıcı adı",
                  hintText: "Username",
                  border: OutlineInputBorder(),
                ),
                validator: (girilenUsername) {
                  if (girilenUsername!.isEmpty) {
                    return "Username kısmı boş girilemez";
                  }
                  if (girilenUsername!.length < 4) {
                    return "5 karakterden az girilemez";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                onSaved: (gelenMail) {
                  _email = gelenMail!;
                },
                //varsayılan değeri tanımlar
                //initialValue: "kemalakarca",
                decoration: InputDecoration(
                  //hata mesajlarının rengini değiştrir.
                  errorStyle: TextStyle(color: Colors.orange),
                  labelText: "Email",
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (girilenEmail) {
                  if (girilenEmail!.isEmpty) {
                    return "mail kısmı boş girilemez";
                  }
                  if (!EmailValidator.validate(girilenEmail!)) {
                    return "Geçerli bir mail giriniz";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                onSaved: (gelenPass) {
                  _password = gelenPass!;
                },
                //varsayılan değeri tanımlar
                //initialValue: "kemalakarca",
                decoration: InputDecoration(
                  //hata mesajlarının rengini değiştrir.
                  errorStyle: TextStyle(color: Colors.orange),
                  labelText: "Şifre",
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (girilenPass) {
                  if (girilenPass!.isEmpty) {
                    return "Şifre boş girilemez";
                  }
                  if (girilenPass!.length < 4) {
                    return "Şifre en az 5 karakter olmalı";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 180,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.green, width: 3),
                    ),
                  ),
                  onPressed: () {
                    //validate tamamlandı mı kontrol etmek için
                    bool _isValidate = _formkey.currentState!.validate();
                    if (_isValidate) {
                      _formkey.currentState!.save();
                      String result =
                          "Username ${_userName}\n$_email\n$_password";
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(result)));
                      //save işlemi olduktan sonra texleri temizler
                      _formkey.currentState!.reset();
                    }
                  },
                  child: Text("Onayla"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWidgetKullanimi extends StatefulWidget {
  const TextFieldWidgetKullanimi({super.key});

  @override
  State<TextFieldWidgetKullanimi> createState() =>
      _TextFieldWidgetKullanimiState();
}

class _TextFieldWidgetKullanimiState extends State<TextFieldWidgetKullanimi> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  int maxLineCount = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        maxLineCount = _focusNode.hasFocus ? 3 : 1;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            controller: _emailController,
            focusNode: _focusNode,
            //Açılacak olan klavye türü
            keyboardType: TextInputType.emailAddress,
            //Klavyedeki(Android) ana butonunun ne olacağı
            textInputAction: TextInputAction.done,

            //Seçili gelme olayı
            //autofocus: true,
            //Satır sayısı
            maxLines: maxLineCount,
            //Girilecek karakter sayısı (TC)
            //maxLength: 11,
            //İmleç rengi
            cursorColor: Colors.red,
            decoration: InputDecoration(
              //Kayan bilgi yazısı
              labelText: "Username",
              //İpucu
              hintText: "Kullanıcı adınızı giriniz",
              icon: Icon(Icons.add),
              //Sol tarafa eklenen icon
              prefix: Icon(Icons.person),
              //Sağ taraf iconu
              suffixIcon: Icon(Icons.cancel),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              //Arka plan rengi verme izni
              filled: true,
              fillColor: Colors.green.shade300,
            ),
            //Klavye ile yapılan her değişikliği algılar
            onChanged: (String gelenDeger) {},
            //Klavyedeki done tuşuna basınca çalışır ya da fiel dan çıkınca
            onSubmitted: (String gelenDeger) {},
          ),
        ),
        TextField(),
      ],
    );
  }
}
