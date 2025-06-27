import 'package:flutter/material.dart';

class FuturebuilderKullanimi extends StatefulWidget {
  const FuturebuilderKullanimi({super.key});

  @override
  State<FuturebuilderKullanimi> createState() => _FuturebuilderKullanimiState();
}

class _FuturebuilderKullanimiState extends State<FuturebuilderKullanimi> {

  Future<int> faktoriyelHesapla(int sayi) async{
    int sonuc=1;
    for(int i =1;i<=sayi;i++){
      sonuc=sonuc*i;
    }
    return sonuc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
        backgroundColor: Colors.green.shade700,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Future verilerin dönüşümünde listeleme için kullanılır.
            FutureBuilder<int>( //Bunun döndüreceği veri türü
              future: faktoriyelHesapla(5),// Çalıştırıalcak fonksiyon
               builder: (context, snapshot){//snaphot fonkiyonu üzerinden gelen veri

               //Eğer fonksiyon veri getirirken bir sorun olursa bu değişken null değer alır o da hata döndürür.
                    if(snapshot.hasError){
                    debugPrint("Hata oldu : ${snapshot.error}");
                    }

                    //Eğer yukarıdaki fonskiyon çalıştı ve veri geldiyse çalışır.
                     if(snapshot.hasData){
                          return Text("sonuc : ${snapshot.data}");
                     }else{
                          return Text("Gösterilecek veri yok");
                     }

               }
               ),
          ],
        ),
      ),
    );
  }
}