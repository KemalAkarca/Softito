import 'package:flutter/material.dart';

class Ornek1 extends StatelessWidget {
  const Ornek1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Örnekleri"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: RehberUygulamasi(),
    );
  }
}

class RehberUygulamasi extends StatefulWidget {
  const RehberUygulamasi({super.key});

  @override
  State<RehberUygulamasi> createState() => _RehberUygulamasiState();
}

class _RehberUygulamasiState extends State<RehberUygulamasi> {
  List<String> kisiler = ["Ahmet Yılmaz", "Sevil Koca", "Berrin Akyürek", "İbrahim Tatlıses", "Mehmet Gümüş", "Selim Kiraz", "Sevgi Kara", "Süleyman Alptekin", "Arif Aknar", "Bersu Cangöz"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kisiler.length,
      itemBuilder: (context,index){
        return KisilerCard(kisi: kisiler[index]);
      });
  }
}

class KisilerCard extends StatefulWidget {
  final String kisi;
  const KisilerCard({required this.kisi});

  @override
  State<KisilerCard> createState() => _KisilerCardState();
}

class _KisilerCardState extends State<KisilerCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("resimler/1.png"),
        ),
        title: Text(widget.kisi,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        subtitle: Text("0542 738 3773",style: TextStyle(fontSize: 14,color: Colors.black45),),
        trailing: Icon(Icons.phone),
      ),
    );
  }
}