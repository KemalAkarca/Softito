/*
-MaterialApp projenin bel kemiği olduğunu daha önce söylemiştik. Bunu ispatlamanın en güzel örneği rotalardır. MaterialPageRoute sınıfı MaterialApp olmadan çalışmaz.
-Ben rotalara niye ihtiyaç duyarım? Ben her sayfa geçişinde MaterialPageRoute sınıfını çağırıyor muyum? bu performans açısından iyi değil. Bu yüzden rotaları kullanmak daha performanslıdır.
-Rota kullanmanın iki yolu vardır. Bir tanesi standart olan diğeri gelişmiş olan. 
-Aralarındaki fark biri sadece sayfa geçişini sağlar. 
-Diğeri ise hem sayfa geçişini hemde veri aktarımını sağlar ama daha karmaşıktır. 
-Rotaları tanımlamak için MaterialApp içerisindeki routes parametresi kullanılır ve bizden bir map ister içine rota ister.

-Eğer ana rotayı tanımlamak istersek / işareti ile tanımlarız:

 "/": (context) => RedPage(),

 Eğer bunu yapıyorsanız artık diğer rotaların başına bu slash hep konmalıdır:

  "/yellowPage": (context) => YellowPage(),
        "/greenPage": (context) => GreenPage(),

  ayrıca bu kök dizinini kullanacaksanız artık materialApp de home parametresini kullanamazsınız ya kaldırın ya da yorum satırı yapın:

   //home: RedPage(),

   Eğer bu rotada herhangi bir yanlış yol olursa çalışan özel bir parametre vardır bu da materialApp içerisindedir routes ın bittiği yere şunu tanımlıyoruz tabi daha öncesinde bir hata sayfası oluşturduk:

    onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => HataSayfasi()), 

  On Generate  Route:
  ------------------------
  -Yine Materialapp içerisinde bulunur. onGenerateRoute:  adında bir parametresi vardır.     
  -Bunun önceki konudan farkı sadece sayfa açma işlemini değil aynı zamanda veri aktarımı yapmak içinde kullanılabildiği için daha fazla işimize yarar.
  -Ben MaterialApp in içini doldurmak istemiyorum. O yüzden farklı bir dosya oluşturup orda bu işlemi tanımlayıp materialApp de çağırıcam.


  -Öncelikle route_generator.dart adında bir dosya oluşturalım.:

  class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => RedPage());

      case "/yellowPage":
        return MaterialPageRoute(builder: (context) => YellowPage());

      case "/greenPage":
        return MaterialPageRoute(builder: (context) => GreenPage());

      default:
        return MaterialPageRoute(builder: (context) => HataSayfasi());
    }
  }
}

Materialapp de onGenereted olan yere şu şekilde çağırıyoruz:

onGenerateRoute: RouteGenerator.routeGenerator,

-OnGenerateRoute ile kurucu yardımıyla veri Gönderme-

1)Sayfaya gidecek olan butonun olduğu sayfada veri oluşturulur. 
2)Verinin gideceği sayfada kurucusunda alınacak veri için hazırlık yapılır. 
3)Rota yönetiminin olduğu sayfada (route_generator) veri verinin gideceği sayfaya gönderilir. 
  String name = settings.arguments as String;
        return MaterialPageRoute(builder: (context) => GreenPage(ad: name));

 4)Anasayfadaki veriyi gönderen butona şu yazılır:
  Navigator.of(context).pushNamed("/greenPage", arguments: name);

Sonuç olarak veri gönderimi tamamlanır.         

*/