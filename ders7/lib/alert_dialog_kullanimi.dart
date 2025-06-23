import 'package:flutter/material.dart';

class AlertDialogKullanimi extends StatefulWidget {
  const AlertDialogKullanimi({super.key});

  @override
  State<AlertDialogKullanimi> createState() => _AlertDialogKullanimiState();
}

class _AlertDialogKullanimiState extends State<AlertDialogKullanimi> {
  String answer = "Boş";
  TextEditingController tf = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){

              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("Uyarı"),
                  content: Text("Silmek istediğinize emin misiniz?"),
                  actions: [
                    TextButton(onPressed: (){
                      setState(() {
                        answer = "Evet";
                      });
                      print("Seçildi");
                      Navigator.pop(context);
                    }, child: Text("Evet"),),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Hayır"),),
                  ],
                );
              }
              );
            }, child: Text("Basit Alert")),

            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("Özel alert", style: TextStyle(color: Colors.white),),
                  backgroundColor: Colors.pink,
                  content: SizedBox(
                    height: 80,
                    child: Column(
                      children: [
                        TextField(
                          style: TextStyle(color: Colors.white),
                          controller: tf,
                          decoration: InputDecoration(
                            label: Text("Veri", style: TextStyle(color: Colors.white),)
                          ),
                        )
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("İptal", style: TextStyle(color: Colors.white),)
                    ),
                    TextButton(onPressed: (){
                      setState(() {
                        answer = tf.text;
                      });

                      Navigator.pop(context);
                    }, child: Text("Veri oku", style: TextStyle(color: Colors.white),))
                  ],

                );
              },);
            }, child: Text("Özel Alert")),
            Text(
             answer != ""? "Verilen cevap: $answer": "")
          ],
        ),
      ),
    );
  }
}