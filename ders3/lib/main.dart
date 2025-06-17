import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyPage());
  }
}

class NefesYemekTarifleri extends StatelessWidget {
  const NefesYemekTarifleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nefis Yemek Tarifleri",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        height: 820,
        width: 430,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  child: Text(
                    "     Cheese Dakgalbi (닭갈비)",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                  height: 49,
                  width: 430,
                  alignment: Alignment.centerLeft,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      height: 300,
                      child: Image.network(
                        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/94/71/25/good.jpg?w=500&h=-1&s=1",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              //Resim alabı
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        child: Text(
                          "Likes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.orange,
                        alignment: Alignment.center,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        child: Text(
                          "Comments",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.red,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              //Beğen + Yorum Yap
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        color: Colors.white,
                        height: 30,
                        child: Text(
                          "Cheese Dakgalbi (닭갈비)",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Başlık
              SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(left: 6),
                        color: Colors.white,
                        height: 36,
                        child: Text(
                          " Spicy chicken stir fried in a large pan",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(right: 6),
                        color: Colors.white,
                        height: 36,
                        alignment: Alignment.centerRight,
                        child: Text(
                          "8 August",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Tarif Alanı
              SizedBox(
                child: Text(
                  "Hello, as far as I know, dakgalbi is a famous dish from Chuncheon in Korea. I wanted to share it with you. You can find the recipe on maangchi's website, I got it from there. As for the preparation: First, separate the thighs from the bones and cut them into large pieces and mix them with 1 tbsp soy sauce and black pepper and marinate them in the fridge while doing the other processes. In the mixer, puree the garlic, turmeric, pepper paste, chili pepper, 2 tbsp soy sauce and water. Keep aside. Cut the cabbage into large pieces and place them in a large pot. Cut the onions into large pieces and place them on top. Cut the peppers and carrots into small pieces and place them in the pot. Add the potatoes on top. Arrange the perilla leaves on the vegetables. Pour the chicken in the middle, and pour the sauce we prepared last on the chicken. Cook on high heat for 2 minutes. Add 3 tbsp water at this stage so that the cabbage does not burn too much. Mix. Then close the lid and cook on low heat for 20 minutes. Stir occasionally. Check for salt, add if necessary. When the vegetables are cooked, turn off the stove. You can serve with rice or pasta. I prefer rice. Enjoy.",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            child: Image.network(
              "https://assets.turbologo.com/blog/tr/2019/09/19134602/instagram-logo-illustration-958x575.png",
            ),
            width: 350,
            height: 120,
          ),
        ),
        Center(
          child: Container(
            child: Text("Kullanıcı adı", style: TextStyle(color: Colors.grey)),
            alignment: Alignment.centerLeft,
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Colors.grey.shade300),
            ),
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Container(
            child: Text("Şifre", style: TextStyle(color: Colors.grey)),
            alignment: Alignment.centerLeft,
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Colors.grey.shade300),
            ),
          ),
        ),
        SizedBox(height: 14),
        Center(
          child: Container(
            child: Text(
              "Giriş yap",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            alignment: Alignment.center,
            width: 350,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 14),
        Center(
          child: Container(
            child: Text(
              "Şifreni mi unuttun?",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            alignment: Alignment.center,
            width: 350,
            height: 45,
          ),
        ),
        Divider(thickness: 1),
        Divider(thickness: 1),
        Center(
          child: Container(
            child: Text(
              "Hesabın Yok mu? Kaydol",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            alignment: Alignment.center,
            width: 350,
            height: 45,
          ),
        ),
        SizedBox(height: 5),
        Divider(thickness: 1),

        SizedBox(height: 20),
        Center(
          child: Container(
            child: Text(
              "Uygulamayı indir",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            alignment: Alignment.center,
            width: 350,
            height: 45,
          ),
        ),
      ],
    );
  }
}

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.red,
              height: 135,
              width: 240,
              child: Image.network(
                "https://images2.alphacoders.com/901/901544.png",
              ),
            ),
          ],
        ),

        SizedBox(height: 20),
        Row(
          children: [
            Container(
              color: Colors.yellow,
              height: 135,
              width: 240,
              child: Image.network(
                "https://img1.wallspic.com/crops/8/8/8/0/7/170888/170888-anime-house-window-plant-building-3840x2160.jpg",
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MyText extends StatelessWidget {
  final String icerik;
  final double yaziBoyut;
  final Color yaziRenk;
  final FontWeight fw;
  const MyText({
    this.icerik = "",
    this.yaziBoyut = 14,
    this.yaziRenk = Colors.black,
    this.fw = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      icerik,
      style: TextStyle(color: yaziRenk, fontSize: yaziBoyut, fontWeight: fw),
    );
  }
}

//Buttons
//Elevated button
class ElevatedButtonExample extends StatelessWidget {
  const ElevatedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              print("tıkla");
            },
            child: Text("Tıkla"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              padding: EdgeInsets.symmetric(horizontal: 59, vertical: 15),
              shadowColor: Colors.black,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                side: BorderSide(color: Colors.yellow, width: 5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Text button
class TextButtoneExample extends StatelessWidget {
  const TextButtoneExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text("Text Button"),
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
            padding: EdgeInsets.symmetric(),
          ),
        ),
      ],
    );
  }
}

//İcon button
class IconButtonExample extends StatelessWidget {
  const IconButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 48)),
    );
  }
}

//Text and TextField
class TextandTextField extends StatelessWidget {
  const TextandTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            //controller : içindeki veriyi değişkene aktarmak için kulanılır,
            //style özelliği içndeki yazılan ile ilgilidir
            style: TextStyle(
              color: Colors.blue,
            ), //içerisine yazılan yazı ile ilgili
            //obscureText: true, //parola gibi girer
            //keyboardType: TextInputType.number, // kalvyeden sadece sayı girdirir. telefon numarası girme gibi. Bunun diğer türleri de var tabi
            maxLength: 11, //girilecek max karakteri sınırlar
            // textAlign: TextAlign.center, // yazının ortadan başlamasını sağlar
            decoration: InputDecoration(
              /*  hintText: "Email" , // bilgilendirme yazısı
               hintStyle: TextStyle( color: Colors.purple) */
              label: Text("Ad soyad"), // üstte gelen bilgilendirme yazısı
              labelStyle: TextStyle(color: Colors.blue, fontSize: 18),
              filled: true, // arka plan rengine izin verir
              fillColor: Colors.grey.shade300,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          TextField(
            style: TextStyle(color: Colors.blue),
            obscureText: true,
            maxLength: 11,
            decoration: InputDecoration(
              /*  hintText: "Email" , // bilgilendirme yazısı
               hintStyle: TextStyle( color: Colors.purple) */
              label: Text("Şifre"),
              labelStyle: TextStyle(color: Colors.blue, fontSize: 18),
              filled: true,
              fillColor: Colors.grey.shade300,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          Text(
            "KEMAL AKARCA",
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,
              fontWeight: FontWeight.bold,

              //backgroundColor: Colors.green,
              /* letterSpacing: 10, //Harfler arası boşluk */
              /* wordSpacing: 23, //Kelimeler arasında boşluk  */
              /* decoration: TextDecoration.underline //altını çizer */
              /* decoration: TextDecoration.lineThrough //üzerini çizer */
              /* decoration: TextDecoration.overline //üzerini çizer */
            ),
          ),
        ],
      ),
    );
  }
}

class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: CircleAvatar(
              radius: 36,
              /* child: Text(
                "KA",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ), */
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/564x/46/c7/ec/46c7ecf9aecc87e5567ebdc88c6bc85f.jpg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Image.asset() ve Image.network() birer widget
// Eğer sizden imageprovider bekliyorsa NetworkImage ya da AssetImage koymalısın

class TextFieldProje extends StatefulWidget {
  const TextFieldProje({super.key});

  @override
  State<TextFieldProje> createState() => _TextFieldProjeState();
}

class _TextFieldProjeState extends State<TextFieldProje> {
  String ad = "";
  TextEditingController tf = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: TextField(
              controller: tf,
              style: TextStyle(color: Colors.blue),
              decoration: InputDecoration(
                label: Text("İsim Soyisim"),
                labelStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.green, width: 3),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.red, width: 3),
                ),
              ),
            ),
          ),
          Text("Alınan veri: $ad "),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                ad = tf.text;
              });
            },
            child: Text("Gönder"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              backgroundColor: Colors.teal.shade600,
              foregroundColor: Colors.white,
              shadowColor: Colors.teal.shade300,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.tealAccent, width: 3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// eğer bir sayfada ekran çizmi(güncellemesi) gerekiyorsa statefullWidget kullanılır. Bu widget iki parçadan oluştuğu için kurucu metoda veri vermeden de değişken
//tanımlanabilir.
//SetState metodu ile ekran yeniden build edilir.

//FloatinActionButton
// 1)Normal bir buton gibi kullanılabilir ama scafoold içerisinde kullanılır ekrana duyarlı çalışır.
// 2)Klavye açıldığında kalvye ile yukarı çıkar.
// 3) Sayfada daşme sabit kalır(kalvye hariç)

class FloatinActionButtonExample extends StatefulWidget {
  const FloatinActionButtonExample({super.key});

  @override
  State<FloatinActionButtonExample> createState() =>
      _FloatinActionButtonExampleState();
}

class _FloatinActionButtonExampleState
    extends State<FloatinActionButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatinActionButton Çalışması"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(decoration: InputDecoration(hint: Text("Veri"))),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.ac_unit),
              tooltip: "FAB1", //üstüne basılı tutunca bu yazı çıkar
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
    );
  }
}

//Sayfalar Arası Geçiş
// 1)Geçiş türü - 2)Geçiş Yönü - 3)Bulunduğu yer - gideceği yer
/* 
  Navigator.push(context, MaterailPageRoute(builder: 
  (context) => sayfaA ()));
 */

//Tanımlama : Sayfadan sayfa ileri gitmek:
//Navigator.push(bulundğun sayfa , Rota) =>

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SayfaA();
  }
}

class SayfaA extends StatelessWidget {
  const SayfaA({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController tf =TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa A"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: tf,
                decoration: InputDecoration(label: Text("Adınız")),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String name = tf.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SayfaB(name)),
                );
                /*                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SayfaB()));
 */
              },
              child: Text("Sayfa B'ye git"),
            ),
          ],
        ),
      ),
    );
  }
}

class SayfaB extends StatelessWidget {
  final String name;
  const SayfaB(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa B"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Text("Merhaba $name"),),
    );
  }
}
