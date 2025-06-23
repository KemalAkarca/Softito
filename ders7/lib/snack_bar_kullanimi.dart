import 'package:flutter/material.dart';

class SnackBarKullanimi extends StatefulWidget {
  const SnackBarKullanimi({super.key});

  @override
  State<SnackBarKullanimi> createState() => _SnackBarKullanimiState();
}

class _SnackBarKullanimiState extends State<SnackBarKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Merhaba", style: TextStyle(color: Colors.white),),),
              );
            },
            child: Text("Varsayılan"),),
             
            ElevatedButton(
            onPressed: (){},
            child: Text("Snackbar Action"),),
        
          ElevatedButton(
            onPressed: (){},
            child: Text("Snackbar Özel"),),
        
          ],
        ),
      ),
    );
  }
}
