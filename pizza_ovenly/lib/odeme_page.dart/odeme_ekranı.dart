import 'package:flutter/material.dart';

class OdemeEkrani extends StatefulWidget {
  const OdemeEkrani({super.key});

  @override
  State<OdemeEkrani> createState() => _OdemeEkraniState();
}

class _OdemeEkraniState extends State<OdemeEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: Row(
              children: [
                Text(
                  "Welcome to Ovenly",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  "We’ll send you a verification code to get started",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              children: [
                Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  "*",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ), //Singapore
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("resimler/singapore.png"),
                      Text(
                        " +65",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                //Numara
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "9876XXXXXX",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF868686),
                      ),
                    ),
                    Container(height: 1, width: 115, color: Colors.black),
                  ],
                ),
              ],
            ),
          ),
          //buton
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 45,
              width: 370,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OdemeEkrani()),
                  );
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Color(0xFF868686),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFFF8F8F8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: Row(
              children: [
                Text(
                  "You agree to our,",
                  style: TextStyle(fontSize: 12, color: Color(0xFF868686)),
                ),
                Text(
                  " Terms of Service",
                  style: TextStyle(fontSize: 12, color: Colors.red),
                ),
                Text(
                  " &",
                  style: TextStyle(fontSize: 12, color: Color(0xFF868686)),
                ),
                Text(
                  " Privacy Policy",
                  style: TextStyle(fontSize: 12, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
