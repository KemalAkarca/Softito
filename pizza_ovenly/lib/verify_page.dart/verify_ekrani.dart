import 'package:flutter/material.dart';
import 'package:pizza_ovenly/menu_page.dart/menu_ekrani.dart';

class VerifyEkrani extends StatelessWidget {
  const VerifyEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Need Help?",
              style: TextStyle(
                color: Color(0xFFB55638),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: Row(
              children: [
                Text(
                  "Verify Your Number",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Enter your PIN here to log in",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),
            ),
          ),
          SizedBox(height: 30),
          noktaliKutu(),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuEkrani()),
                );
              },
              child: Text(
                "Try Another Way",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFB55638),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class noktaliKutu extends StatelessWidget {
  const noktaliKutu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 62,
          width: 62,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: CircleAvatar(backgroundColor: Color(0xFFB55638), radius: 8),
          ),
        ),
        Container(
          height: 62,
          width: 62,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: CircleAvatar(backgroundColor: Color(0xFFB55638), radius: 8),
          ),
        ),
        Container(
          height: 62,
          width: 62,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: CircleAvatar(backgroundColor: Color(0xFFB55638), radius: 8),
          ),
        ),
        Container(
          height: 62,
          width: 62,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: CircleAvatar(backgroundColor: Color(0xFFB55638), radius: 8),
          ),
        ),
      ],
    );
  }
}
