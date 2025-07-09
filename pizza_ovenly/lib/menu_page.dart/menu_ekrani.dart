import 'package:flutter/material.dart';

class MenuEkrani extends StatefulWidget {
  const MenuEkrani({super.key});

  @override
  State<MenuEkrani> createState() => _MenuEkraniState();
}

class _MenuEkraniState extends State<MenuEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //Location ve newyork kısmı ve bildirim
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                color: Color(0XFFB55638),
                              ),
                              Text(
                                "New York, USA",
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 38,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),

                  //bildirim
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xfff8f8f8),
                      foregroundColor: Colors.black,
                      child: Icon(Icons.notifications, size: 40),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              //Search butonu
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color(0xfff8f8f8),
                        ),
                        child: Row(
                          children: [
                            //Search
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Image.asset(
                                "resimler/Search.png",

                                height: 90,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 15),
                            //Search your favorite pizza
                            Text(
                              "Search your favorite pizza",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF868686),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "resimler/Filter.png",

                                height: 90,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              //Special Offer Kartı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),

                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfff8f8f8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Special Offer
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 20,
                                ),
                                child: Text(
                                  "Special Offer",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              //Detail
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Text(
                                  "Discount 20% off applied at checkout",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF868686),
                                  ),
                                ),
                              ),
                              //Order Now Butonu
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 12,
                                ),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("   Order Now   "),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0XFFDD714E),
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //main image
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image.asset("resimler/Main image 1.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              //Popular Pizza -See All
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Popular Pizza",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      "See All",
                      style: TextStyle(fontSize: 16, color: Color(0XFFB55638)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              //Kriterler
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "All Pizzas",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        height: 45,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFB55638),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Vegetarian",
                          style: TextStyle(fontSize: 16),
                        ),
                        height: 45,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0XFFF8F8F8),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Specials", style: TextStyle(fontSize: 16)),
                        height: 45,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0XFFF8F8F8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              //Pizza Çeşitleri
              //Pepperoni
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),

                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfff8f8f8),
                  ),
                  child: Row(
                    children: [
                      //main image
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Image.asset("resimler/Pepperoni Pizza.png"),
                        ),
                      ),
                      //Detaylar
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Special Offer
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 12,
                                ),
                                child: Text(
                                  "Pepperoni Pizza",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              //Detail
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Text(
                                  "Offer valid today only",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF868686),
                                  ),
                                ),
                              ),
                              //min ve yıldız
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "20min",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF868686),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF868686),
                                      ),
                                    ),
                                    Image.asset("resimler/Star 1.png"),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$8.00",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFB55638),
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 15,
                                      child: Text(
                                        "25% Off",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Icon(Icons.favorite_border),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Image.asset("resimler/Frame 7.png"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              //Marherita
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),

                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfff8f8f8),
                  ),
                  child: Row(
                    children: [
                      //main image
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Image.asset("resimler/Margherita Pizza.png"),
                        ),
                      ),
                      //Detaylar
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Special Offer
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 12,
                                ),
                                child: Text(
                                  "Margherita Pizza",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              //Detail
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Text(
                                  "Offer valid today only",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF868686),
                                  ),
                                ),
                              ),
                              //min ve yıldız
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "30min",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF868686),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "4.6",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF868686),
                                      ),
                                    ),
                                    Image.asset("resimler/Star 1.png"),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$10.00",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFB55638),
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                      alignment: Alignment.center,
                                      width: 50,
                                      height: 15,
                                      child: Text(
                                        "25% Off",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Icon(Icons.favorite_border),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Image.asset("resimler/Frame 7.png"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color(0xfff8f8f8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //Search
                            Image.asset(
                              "resimler/solar_home-2-bold.png",

                              height: 90,
                              color: Colors.black,
                            ),
                            Image.asset(
                              "resimler/Menu.png",

                              height: 90,
                              color: Colors.black,
                            ),
                            Image.asset(
                              "resimler/Bag.png",

                              height: 90,
                              color: Colors.black,
                            ),
                            Image.asset(
                              "resimler/Favorite.png",

                              height: 90,
                              color: Colors.black,
                            ),
                            Image.asset(
                              "resimler/User.png",

                              height: 90,
                              color: Colors.black,
                            ),
                          ],
                        ),
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
