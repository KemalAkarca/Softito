import 'package:flutter/material.dart';
import 'package:navigator_islemleri/red_page.dart';

class Navigation1 extends StatefulWidget {
  const Navigation1({super.key});

  @override
  State<Navigation1> createState() => _Navigation1State();
}

class _Navigation1State extends State<Navigation1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator islemleri"),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade400,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () async {
                int? gelenSayi = await Navigator.push<int>(
                  context,
                  MaterialPageRoute(builder: (context) => RedPage()),
                );
                print(gelenSayi);
              },
              child: Text("Kırmızı sayfaya git"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 219, 143, 169),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {},
              child: Text("Sonraki Button"),
            ),
          ],
        ),
      ),
    );
  }
}

/* 
  Eski adı : WillPopScope
Yeni Adı : PopScope

- Eğer kullanıcı telindeki geri butonu ya da appbar da kş gerş butonu basarak geri geliyorsa bunu kontrol etmek. için kullanılır

- Bu yapı Scaffold u sarmalar . Popscope() ile . Biz bu yapıyı kontrol etmek istiyorsan canPop parametresini kullanmak zorundayız.
-Canpop false ise geri butonu tıklanmaz hale gelir. Ama hala tıklanma erişimini alabiliriz.

 */
