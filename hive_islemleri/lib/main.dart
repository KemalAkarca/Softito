import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_islemleri/shared_kullanimi.dart';

void main() async {
  // veritabanı dosyaları oluştu
  await Hive.initFlutter("uygulama");
  //test adında bir kutu (alan ya da tablo) yoksa oluştur ve aç bekle varsa da aç bekle
  //Alacağı veri türünde özelleştirilibilir. await Hive.openBox<String>("test");
  await Hive.openBox("test");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyProject());
  }
}

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: veriEkle),
      appBar: AppBar(
        title: Text("Depolama işlemleri"),
        backgroundColor: Colors.blue.shade300,
        foregroundColor: Colors.blue.shade50,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade800,
                foregroundColor: Colors.blue.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SharedKullanimi()),
                );
              },
              child: Text("Shared Prefereneces"),
            ),
          ],
        ),
      ),
    );
  }

  void veriEkle() async {
    //Hive de veri eklemenin iki yolu var
    // 1. add metodu , veriyi ekler key i otomotatik olarak sayı atar . yani birin veri index:0 key:0 ikinci veri index :1 key:1

    // 2.put metodu , eklerken sizden key ister o keye göre çağırma işlemi yaparsanız (kayıt ekleme ve spesifik şeylerde)

    var box = Hive.box("test");
    await box.clear();
    await box.add("bilal"); //0
    await box.add(false); //1
    await box.add(39); //2

    await box.put("tc", "12345678910"); //putun bir indexi yok
    await box.put("memleket", "Zonguldak");

    box.keys.forEach((veri) {
      debugPrint(veri.toString());
    });

    box.values.forEach((veri) {
      debugPrint(veri.toString());
    });
  }
}
