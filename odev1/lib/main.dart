import 'package:flutter/material.dart';

import 'package:odev1/calendar_page%20(1).dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              // Profil ve Selamlama
              Row(
                children: [
                  SizedBox(width: 15),
                  CircleAvatar(
                    backgroundImage: AssetImage("resimler/profil.png.png"),
                  ),
                  SizedBox(width: 7),
                  Text("Hello"),
                  Text(",Username",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 15),
              // 4 NEW TASKS TODAY
              Row(
                children: [
                  SizedBox(width: 15),
                  Text("4 New ", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("tasks today"),
                ],
              ),
              SizedBox(height: 25),
              // Konteynırlar
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    buyuk_container(
                      color: Color.fromARGB(255, 240, 213, 131),
                      title: "UX Design for MONS calendar",
                      date: "Oct 25, 2025",
                      description:
                          "Aldı dedi git dedi çocuklarını istiyorsan kendini de al kendini git dedi",
                    ),
                    SizedBox(width: 8),
                    buyuk_container(
                      color: Color.fromARGB(255, 131, 196, 240),
                      title: "UX Design for MONS calendar",
                      date: "Oct 25, 2025",
                      description:
                          "Aldı dedi git dedi çocuklarını istiyorsan kendini de al kendini git dedi",
                    ),
                    SizedBox(width: 8),
                    buyuk_container(
                      color: Color.fromARGB(255, 131, 240, 136),
                      title: "UX Design for MONS calendar",
                      date: "Oct 25, 2025",
                      description:
                          "Aldı dedi git dedi çocuklarını istiyorsan kendini de al kendini git dedi",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // To Do kısmı
              Padding(
                padding: EdgeInsets.only(left: 27),
                child: Row(
                  children: [
                    Text("To"),
                    SizedBox(width: 8),
                    Text("Do", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.blue.shade50,
                      child: Text("3", style: TextStyle(fontSize: 12)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              // Urgent Alanı
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    kucuk_container(color: Color.fromARGB(255, 247, 177, 187)),
                    SizedBox(width: 8),
                    kucuk_container(color: Color.fromARGB(255, 177, 247, 235)),
                    SizedBox(width: 8),
                    kucuk_container(color: Color.fromARGB(255, 237, 247, 177)),
                    SizedBox(width: 8),
                    kucuk_container(color: Color.fromARGB(255, 177, 247, 177)),
                    SizedBox(width: 8),
                    kucuk_container(color: Color.fromARGB(255, 227, 177, 247)),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // In Progress Alanı
              Padding(
                padding: EdgeInsets.only(left: 27),
                child: Row(
                  children: [
                    Text("In", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    Text("Progress"),
                    SizedBox(width: 8),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.orange.shade100,
                      child: Text("3", style: TextStyle(fontSize: 12)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15), // Alt kısım boşluk bırakıyoruz
              // Checkboxlı kısım
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  checkboxlu_container(
                      title: "UX Design for MONS calendar",
                      color: const Color.fromARGB(255, 187, 247, 247),
                      hours: "6 hours",
                      isChecked: isChecked1,
                      onChanged: (val) {
                        setState(() {
                          isChecked1 = val ?? false;
                        });
                      }),
                  SizedBox(
                    height: 12,
                  ),
                  checkboxlu_container(
                      title: "UX Design for MONS calendar",
                      color: const Color.fromARGB(255, 187, 206, 247),
                      hours: "6 hours",
                      isChecked: isChecked2,
                      onChanged: (val) {
                        setState(() {
                          isChecked1 = val ?? false;
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
      // SABİT BOTTOM NAVIGATION BAR
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavIcon(Icons.home, 0),
            NavIcon(Icons.search, 1),
            NavIcon(Icons.check_box_outlined, 2),
            Stack(
              children: [
                NavIcon(Icons.notifications_none, 3),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.red,
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => onItemTapped(4),
              child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("resimler/profil.png.png"),
                  backgroundColor: selectedIndex == 4
                      ? Colors.orange.shade100
                      : Colors.black),
            ),
          ],
        ),
      ),
      
    );
  }

  Widget checkboxlu_container({
    required String title,
    required Color color,
    required String hours,
    bool isChecked = false,
    required Function(bool?) onChanged,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 12),
      height: 80,
      width: 350,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              Checkbox(
                value: isChecked,
                onChanged: onChanged,
                activeColor: Colors.orange,
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Icon(
                  Icons.flag,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7.0, left: 7),
                child: Text(
                  hours,
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buyuk_container({
    required Color color,
    required String title,
    required String date,
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 12),
      height: 250,
      width: 250,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          Text(title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: Icon(Icons.flag, color: Colors.red),
              ),
              Text(date),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(description),
          ),
          Row(
            children: [
              Container(
                height: 30,
                width: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.orange.shade700,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "High",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 6),
              Container(
                height: 30,
                width: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "5 Scare",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget kucuk_container({required Color color}) {
    return Container(
      padding: EdgeInsets.only(left: 12),
      height: 180,
      width: 160,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text("Urgent",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text("UX Design for MONS calendar ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.flag, color: Colors.red),
              ),
              Text("Oct 25, 2025"),
            ],
          ),
        ],
      ),
    );
  }

  Widget NavIcon(IconData icon, int index) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Icon(
        icon,
        color: selectedIndex == index ? Colors.orange : Colors.grey,
      ),
    );
  }
}
