import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  //back arrow
                  Icon(Icons.arrow_back),
                  SizedBox(height: 20),
                  //Activity
                  Text(
                    "Activity",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20),
                  //menü
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("resimler/ordered.png"),
                          Text("Ordered"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("resimler/shipped.png"),
                          Text("Shipped"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("resimler/arriving.png"),
                          Text("Arriving"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("resimler/delivered.png"),
                          Text("Delivered"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  //View My Order
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 80,
                            child: Text(
                              "View My Order",
                              style: TextStyle(
                                color: Color(0xff4C69FF),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: BoxBorder.all(color: Color(0xff4C69FF)),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(thickness: 1, indent: 16, endIndent: 16),
                  SizedBox(height: 8),
                  Text(
                    "Important",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 16),
                  //mi
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 40,
                        width: 40,
                        child: Image.asset("resimler/mi.png"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("2 unread messages from Xiaomi"),
                          Text(
                            "13 Dec 2018, 09:38",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  //ticket
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.pink.shade300,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Image.asset("resimler/voucher.png", height: 36),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your voucher is about to expire."),
                          Text(
                            "Don’t miss out! Use your voucher now.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(thickness: 1, indent: 16, endIndent: 16),
                  SizedBox(height: 8),
                  Text(
                    "Order Updates",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("resimler/shipped.png"),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Parcel shipped from China "),
                                Text(
                                  "12 Dec 2018, 09:38",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Image.asset("resimler/saat.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(thickness: 1, indent: 16, endIndent: 16),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("resimler/delivered.png"),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Order delivered to 22 Baker St…"),
                                Text(
                                  "10 Dec 2018, 08:36",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Image.asset("resimler/modem.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
