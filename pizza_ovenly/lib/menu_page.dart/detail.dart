import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //PİZZA RESMİ
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 400,
                        color: Color(0xfff8f8f8),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 8,
                              top: 16,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.arrow_back_ios_sharp),
                              ),
                            ),
                            Positioned(
                              right: 8,
                              top: 16,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.favorite_border),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "resimler/Pepperoni Pizza (1).png",
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 330),

                                child: SizedBox(
                                  height: 40,
                                  width: 100,

                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffb55638),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "-",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "02",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "+",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              //isim
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Pepporini Pizza",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Text("4.5 ", style: TextStyle(fontSize: 16)),
                        Image.asset("resimler/Star 1.png", fit: BoxFit.cover),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Baked to perfection on a crispy golden crust, this pizza delivers the perfect balance of bold flavors and cheesy goodness...Read More",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
