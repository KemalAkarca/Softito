import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  /*
Flutter 2015 yılında google tarafından duyuruldu.
Cross bir platformdur.Hem android hem iosiçin çıktı alınılabilir.
Tasarım ile kod aynı ekranda yapılır.
Dart programlama dilini kullanır.


Proje dizimleri:
1-lib: Dart dosyalarının oluşturulduğu ana klasördür.
2-Pubspec.yaml:  Resim,font, ekleyebildiğimiz ayrıca harici kütüphanelerş tanımladığımız uygulama ile ilgili tüm ayarların olduğu klasördür.

Bizim iki ana  widget ımız vardır
1)StatelessWidget
Eğer bir sayfada etkileşim olmayacaksa bu widget kullanılır.

Material App
Uygulamanın arsasıdır. Bir kere kullanılır.
home parametresi ana parametresidir.Alt yapıları onun içine yazarız.
Ekranın sağ üst köşesindeki yazıyı kaldırmak için materialApp için   debugShowCheckedModeBanner: false, kullanılır
Scaffold: Evin temelidir.Birden fazla olabilir İçerisindeki appBar koyulabilir.
appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Sofito Dersleri"),
          foregroundColor: Colors.white,
          centerTitle: false,
        ),


body parametresi ile içerisinde sayfa tasarımlarındakş widgetlar eklenir

Container = Kutu oluşturmak için kullanılır  diğer adı da çerçevedir.
Child içine widget eklediğimiz parametresidir. İçindeki çocuk kadar yer kaplar eğer bunu değiştirmek istersen uzunluk ve yükseklik vermelisin
Aynı zamanda color yani arka plan  rengini verdiğimiz özelliği vardır.

body: Container(
          child: Text("Kemal"),
          color: Colors.deepPurpleAccent,
          width: 200,
          height: 200),

          Container ın margşn parametresi vardır değer olarak double değer alır 3 türü vardır 
          birincisi her yerde aynı boşluk

margin : EdgeInsets.all(20),

Eğer yatay ve dikey ayrı ayrı değerler vermek istiyorsak marginde:
EdgeInsets.symetric(horizontal:20, vertical 20),

Eğer sadece belli yerlere vermek istiyorsak :
EdgeInsets.only(top: 50,left: 36)

İç boşluk anlıma gelen padding, container içindeki çocuğu ile arasındaki boşluğu temsil eder.
Margindeki tüm sistemle aynıdır.
          padding: EdgeInsets.all(36),
          padding: EdgeInsets.symetric(horizontal:20, vertical 20),
          padding: EdgeInsets.only(top: 50,left: 36)

Decorition: Container a dekorasyon yapmak için kullanılır BoxDecoration.

Decorotion içersine çerçeve koyabaliriz bunu da border paramatresi ile yapabiliriz.
decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            border: Border.all(color: Colors.lightBlue, width: 12)








*/
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Ornek());
  }
}

class Ornek extends StatelessWidget {
  const Ornek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align Example"),
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
      ),
      body: Column(
        children: [
          MaviKare(),
          SizedBox(height: 15,),
          KirmiziKare(),
         SizedBox(height: 15,),
         MyTEXT("MERHABA KEMAL")

        ],
      ));
  }
}
class MaviKare extends StatelessWidget {
  const MaviKare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height: 100,
      width: 100,
    );
  }
}

class KirmiziKare extends StatelessWidget {
  const KirmiziKare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 120,
      width: 120,
    );
  }
}

class MyTEXT extends StatelessWidget {
  final String yazim;
   MyTEXT(this.yazim);

  @override
  Widget build(BuildContext context) {
    return Text(yazim);
  }
}


/* 
///////////Align Ornek1////////////

Container(
        height: 160,
        width: 160,
        color: Colors.green.shade400,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text("Yazı"),
        ),
      ), 
      
/////////////Align Ornek2/////////

Align(
        alignment: Alignment.topRight,
        child: Container(
          height: 160,
          width: 160,
          color: Colors.green.shade400,
          child: Text("Yazı"),
        ),
      ),
      

///////////Align Ornek3////////////  

Container(
        height: 500,
        width: 400,
        color: Colors.green.shade100,
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 160,
            width: 160,
            color: Colors.green.shade400,
            child: Text("Yazı"),
          ),
        ),
      ),

///////////Align Ornek4////////////
 Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          height: 500,
          width: 400,
          color: Colors.green.shade100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 160,
              width: 160,
              color: Colors.green.shade400,
              child: Text("Yazı"),
            ),
          ),
        ),
      ),
 
 ///////////Align Ornek5////////////
 Container(
        width: 300,
        height: 300,
        color: Colors.green.shade300,
        child: Column(
          children: [
            Container(
              width: 300,
              height: 150,
              color: Colors.white,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text("YAZI1")),
            ),
            Container(
              width: 300,
              height: 150,
              color: Colors.lightBlueAccent,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("YAZI2")),
            ),
          ],
        ),
      ),

//////ÖRNEK SİZED BOX//////

Column(
        children: [
          Row(
            children: [
              Container(
                height: 160,
                width: 160,
                color: Colors.red.shade900,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 160,
                width: 160,
                color: Colors.pink.shade900,
              ),
              
            ],
          ),
          SizedBox(height: 20,),
          Container(
                height: 200,
                width: 200,
                color: Colors.purple.shade400 ,
          ),
        ],
      )

//////ÖRNEK SİZED BOX   2  //////

      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100, width: 100, color: Colors.red),
            SizedBox(
              height: 200,
              child: Container(height: 100, width: 100, color: Colors.blue),
            ),
            Container(height: 100, width: 100, color: Colors.brown),
          ],
        ),
      ),

//////////// SPACER ///////////////////
Column(
        children: [
          Container(height: 140, width: 140, color: Colors.black),
          Spacer(),
          Container(height: 100, width: 100, color: Colors.brown),
          Container(
            height: 120,
            width: 120,
            color: const Color.fromARGB(255, 58, 2, 2),
          ),
        ],
      ),

      //////////////////EXPANDED///////////////////////////////////

      Row(
        children: [
          Expanded(child: Container(width: 150, height: 150,color: Colors.red,)),
          Expanded(child: Container(width: 150, height: 150,color: Colors.blue,)),
        ],
      )

            //////////////////EXPANDED - flex///////////////////////////////////
            Row(
        children: [
          Expanded(flex: 2, child: Container(width: 150, height: 150,color: Colors.red,)),
          Expanded(flex: 3, child: Container(width: 150, height: 150,color: Colors.blue,)),
        ],
      )

            //////////////////FLEXIBLE///////////////////////////////////
            ///Row(
        children: [
          Flexible(child: Container(color: Colors.lightBlueAccent, height: 300, width: 500)),
          SizedBox(width: 8,),
          Flexible(child: Container(color: Colors.orange, height: 300, width: 500)),
          
        ],
      ),

      
      */

class BorderExamples extends StatelessWidget {
  const BorderExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Örnek 1",
          style: TextStyle(color: Colors.white, fontSize: 45),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.bottomLeft,
                child: Text("Sol alt yazı"),
                width: 130,
                height: 80,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.topLeft,
                child: Text("Sol alt yazı"),
                width: 130,
                height: 80,
                color: Colors.red,
              ),
            ],
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              width: 175,
              height: 80,
              alignment: Alignment.center,
              child: Text("Çerceve kalın ve oval"),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.red, width: 12),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              width: 175,
              height: 80,
              alignment: Alignment.center,
              child: Text("Çerceve ve belli köşe oval"),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.brown, width: 8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              width: 175,
              height: 80,
              alignment: Alignment.center,
              child: Text("Yazı orta top border"),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border(top: BorderSide(color: Colors.yellow, width: 8)),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              width: 210,
              height: 80,
              alignment: Alignment.topCenter,
              child: Text("üst alt border yazı üst ortada"),
              decoration: BoxDecoration(
                color: Colors.teal,
                border: Border(
                  top: BorderSide(color: Colors.red, width: 8),
                  bottom: BorderSide(color: Colors.red, width: 8),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              width: 190,
              height: 80,
              alignment: Alignment.topCenter,
              child: Text("çerçeve renkli"),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border(
                  top: BorderSide(color: Colors.yellow, width: 8),
                  bottom: BorderSide(color: Colors.green, width: 8),
                  left: BorderSide(color: Colors.black, width: 8),
                  right: BorderSide(color: Colors.brown, width: 8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LastProject extends StatelessWidget {
  const LastProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("Container yanı 1 "),
                color: Colors.yellow,
                height: 130,
                width: 130,
                padding: EdgeInsets.all(20),
              ),
              Container(
                child: Text("Container yanı 1 "),
                color: Colors.blue,
                height: 130,
                width: 130,
                padding: EdgeInsets.all(20),
              ),
              Container(
                child: Text("Container yanı 1 "),
                color: Colors.green,
                height: 130,
                width: 130,
                padding: EdgeInsets.all(20),
              ),
            ],
          ),
          Container(
            height: 130,
            width: 130,
            color: Colors.orange,
            child: Text("Dikey Container 1"),
            padding: EdgeInsets.all(20),
          ),
          Container(
            height: 130,
            width: 130,
            color: Colors.teal,
            child: Text("Dikey Container 1"),
            padding: EdgeInsets.all(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.pink.shade400,
                child: Text("Yatay Container 1"),
                height: 130,
                width: 130,
                padding: EdgeInsets.all(20),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text("Yatay Container 2"),
                height: 130,
                width: 130,
                padding: EdgeInsets.all(20),
                color: Colors.purple.shade300,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Text("Yatay Container 3"),
                height: 130,
                width: 130,
                padding: EdgeInsets.all(20),
                color: Colors.blue.shade900,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContainerOrnek extends StatelessWidget {
  const ContainerOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Container(
        height: 450,
        width: 450,
        color: Colors.teal.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://www.rudaw.net/s3/rudaw.net/ContentFiles/836132Image1.jpg?version=7140974",
                  ),
                ),
              ),
              child: Text("kedi"),
            ),
          ],
        ),
      ),
    );
  }
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Stack(
        children: [
          Container(height: 350, width: 350, color: Colors.teal.shade400),
          Container(height: 300, width: 300, color: Colors.yellow.shade400),
          Container(height: 250, width: 250, color: Colors.blue.shade400),
        ],
      ),
    );
  }
}

class CloumnAndRow extends StatelessWidget {
  const CloumnAndRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      body: Container(
        color: Colors.yellow,
        height: 400,
        width: 400,
        child: Row /*Column*/ (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          /* crossAxisAlignment: CrossAxisAlignment.end, */
          mainAxisSize: MainAxisSize.min /*max*/,
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Text("Container1"),
              alignment: Alignment.center,
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
              child: Text("Container2"),
              alignment: Alignment.center,
            ),
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: Text("Container2"),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}

class MySecondExample extends StatelessWidget {
  const MySecondExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MySecondExample"),
        backgroundColor: Colors.orange.shade200,
        foregroundColor: Colors.teal,
      ),
      body: Container(
        width: 400,
        height: 350,
        margin: EdgeInsets.all(36),
        padding: EdgeInsets.all(75),
        child: Icon(Icons.person, size: 89, color: Colors.green),
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(color: Colors.cyan, width: 13),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
    );
  }
}

class MyFirstJob extends StatelessWidget {
  const MyFirstJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Work"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        foregroundColor: Colors.green,
      ),
      body: Container(
        child: Text("Zonguldak", style: TextStyle(fontSize: 21)),
        width: 400,
        height: 350,
        margin: EdgeInsets.all(60),
        padding: EdgeInsets.all(90),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          border: Border.all(color: Colors.black, width: 8),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(12, 12),
              blurRadius: 12,
            ),
          ],
        ),
      ),
    );
  }
}

class MyFirstExample extends StatelessWidget {
  const MyFirstExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Sofito Dersleri"),
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Container(
        child: Text("Kemal"),
        width: 200,
        height: 200,
        margin: EdgeInsets.only(top: 50, left: 36),
        padding: EdgeInsets.all(65),
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          border: Border.all(color: Colors.lightBlue, width: 12),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(23),
            topLeft: Radius.circular(23),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              offset: Offset(20, 20),
              blurRadius: 26,
            ),
          ],
        ),
      ),
    );
  }
}
