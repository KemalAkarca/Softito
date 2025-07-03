import 'package:flutter/material.dart';
import 'package:pizza_ovenly/introduction_page.dart/anasayfa.dart';

class FirstPhotoName extends StatefulWidget {
  const FirstPhotoName({super.key});

  @override
  State<FirstPhotoName> createState() => _FirstPhotoNameState();
}

class _FirstPhotoNameState extends State<FirstPhotoName> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Anasayfa()),
        );
      },
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "resimler/Vector.png",
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset("resimler/isim.png", height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
