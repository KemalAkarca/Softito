import 'package:flutter/material.dart';
import 'package:izgara_evi/models/eat.dart';
import 'package:izgara_evi/view/menu_sayfa_details.dart';

class MenuSayfa extends StatelessWidget {
  const MenuSayfa({super.key});

  @override
  
  Widget build(BuildContext context) {
    String mainurl ="resimler/";
    Eat a1 =Eat(name: "Izgara Köfte", imgUrl: "$mainurl/y1.png", desc: "Izgara köfte, kıyma, soğan, sarımsak ve baharatların karıştırılıp şekillendirilmesiyle hazırlanır. Köfteler, önceden ısıtılmış ızgarada orta ateşte pişirilir ve dışı hafifçe kızarana kadar tutulur. Yanında genellikle közlenmiş sebzeler veya pilav ile servis edilir.", price: 350);
    Eat a2 =Eat(name: "Karışık Kebap", imgUrl: "$mainurl/y2.png", desc: "Karışık kebap, farklı et çeşitlerinin bir arada sunulduğu zengin bir yemektir. Genellikle kuzu şiş, tavuk, adana kebap ve köfte gibi etler ızgarada pişirilir. Yanında közlenmiş sebzeler, pilav ve yoğurt gibi garnitürlerle servis edilir.", price: 1200);
    Eat a3=Eat(name: "Kuzu Şiş", imgUrl: "$mainurl/y3.png", desc: "Kuzu şiş, kuzu etinin kuşbaşı doğranıp, baharatlarla marine edilerek şişe dizilmesiyle hazırlanır. Ardından ızgarada veya mangalda yavaşça pişirilir, böylece et yumuşak ve lezzetli olur. Genellikle lavaş, pilav ve közlenmiş sebzelerle servis edilir.", price: 900);
    Eat a4=Eat(name: "Sarma Ciğer", imgUrl: "$mainurl/y4.png", desc: "Sarma ciğer, ince dilimlenmiş ciğerlerin baharatlarla harmanlandıktan sonra dikkatlice sarılmasıyla hazırlanır. Genellikle şişlere dizilip ızgarada veya mangalda pişirilir. Yanında soğan, yeşillik ve lavaş ile servis edilir.", price: 750);
    Eat a5=Eat(name: "Tantuni", imgUrl: "$mainurl/y5.png", desc: "Tantuni, ince doğranmış dana veya tavuk etinin baharatlarla kavrulup, özel sac üzerinde hızlıca pişirilmesiyle hazırlanır. Pişen et, ince lavaş içine konur ve domates, soğan, maydanoz gibi taze sebzelerle servis edilir. Hem pratik hem lezzetli bir sokak yemeğidir.", price: 450);
    Eat a6=Eat(name: "İskender", imgUrl: "$mainurl/y6.png", desc: "İskender kebap, ince dilimlenmiş döner etinin üzerine tereyağlı domates sosu ve yoğurt eşliğinde servis edilmesidir. Altında genellikle tereyağında kızartılmış pide parçaları bulunur. Lezzetini tereyağının ve sosun birleşiminden alır, Türk mutfağının klasiklerinden biridir.", price: 530);
    Eat a7=Eat(name: "Mumbar", imgUrl: "$mainurl/y7.png", desc: "Mumbar, temizlenmiş ve içi doldurulmuş hayvan bağırsağının baharatlı kıyma karışımıyla doldurulup dikilmesiyle hazırlanır. Daha sonra haşlanır veya ızgarada pişirilir, bazen kızartılarak da servis edilir. Yanında genellikle soğan ve limonla sunulur.", price: 600);
    Eat a8=Eat(name: "Kokoreç", imgUrl: "$mainurl/y8.png", desc: "Kokoreç, baharatlarla harmanlanmış kuzu bağırsaklarının şişe sarılarak mangalda yavaş yavaş pişirilmesiyle hazırlanır. Pişen kokoreç ince ince doğranıp, genellikle ekmek arasında veya tabakta servis edilir. Lezzetli ve aromatik bir sokak yemeği olarak çok sevilir.", price: 280);
    Eat a9=Eat(name: "Kuzu Tandır", imgUrl: "$mainurl/y9.png", desc: "Kuzu tandır, kuzu etinin özel toprak veya metal kaplarda, ağır ateşte uzun saatler boyunca kendi suyunda ve buharında yumuşacık olana kadar pişirilmesidir. Et, kemikten kolayca ayrılır ve çok lezzetli, aromatik bir tat kazanır. Genellikle pilav ve yoğurtla birlikte servis edilir.", price: 670);
    Eat a10=Eat(name: "Lahmacun", imgUrl: "$mainurl/y10.png", desc: "Lahmacun, ince açılmış hamurun üzerine kıyma, domates, soğan, biber ve baharatlardan oluşan bir harcın yayılmasıyla hazırlanır. Fırında hızlıca pişirilir ve çıtır çıtır olur. Genellikle limon, maydanoz ve soğanla birlikte sarılarak veya dürüm gibi tüketilir.", price: 150);
    Eat a11=Eat(name: "Karışık Pide", imgUrl: "$mainurl/y11.png", desc: "Karışık pide, ince hamurun üzerine çeşitli malzemelerin—kıyma, sucuk, peynir, sebze ve yumurta gibi—karışık olarak serpilmesiyle hazırlanır. Pide, taş fırında pişirilerek içi yumuşak, dışı çıtır bir kıvama ulaşır. Hem doyurucu hem de zengin lezzet seçenekleri sunan geleneksel bir Türk yemeğidir.", price: 340);
    List<Eat>yemekler =[
      a1,
      a2,
      a3,
      a4,
      a5,
      a6,
      a7,
      a8,
      a9,
      a10,
      a11,
      
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: Text("Izgara Evi",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
      ),
      body: Yemeklistesi(yemekler:yemekler ),
    );
  }
}

class Yemeklistesi extends StatefulWidget {
  
  final List<Eat> yemekler;
  const Yemeklistesi({required this.yemekler});

  @override
  State<Yemeklistesi> createState() => _YemeklistesiState();
}

class _YemeklistesiState extends State<Yemeklistesi> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.yemekler.length ,
      itemBuilder: (context, index) {
        return EatCard(eat: widget.yemekler[index]);
      },
    );
  }
}

class EatCard extends StatefulWidget {
  final Eat eat;
  const EatCard({required this.eat});

  @override
  State<EatCard> createState() => _EatCardState();
}

class _EatCardState extends State<EatCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(alignment: Alignment.center,
      height: 85,
      child:ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuSayfaDetails(eat: widget.eat)));
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.eat.imgUrl),
        ),
        title: Text(widget.eat.name),
        subtitle: Text(widget.eat.price.toString()),
        trailing: Icon(Icons.shopping_basket),
      ),
      
      ),
      
    );
  }
}