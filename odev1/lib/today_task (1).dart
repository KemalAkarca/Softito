import 'package:flutter/material.dart';

class TodayTask extends StatefulWidget {
  const TodayTask({super.key});

  @override
  State<TodayTask> createState() => _TodayTaskState();
}

class _TodayTaskState extends State<TodayTask> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 7, right: 7, top: 23),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Üst kısım
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.keyboard_arrow_left),
                  ),
                  Text(
                    "Today task",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.auto_fix_high),
                  ),
                ],
              ),
          
              SizedBox(height: 15),
          
              // Başlık
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "UX Design for MONS calendar",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                ),
              ),
          
              // Created by
              Row(
                children: [
                  SizedBox(width: 15),
                  CircleAvatar(
                    backgroundImage: AssetImage("resimler/profil.png.png"),
                  ),
                  SizedBox(width: 15),
                  Text("Created by",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Colors.black)),
                  Text(" Username",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ],
              ),
          
              SizedBox(height: 10),
          
              // Açıklama
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Al dedi git dedi çocuklarını dedi istiyorsan dedi kendini dedi al git dedi bana Al dedi git dedi çocuklarını dedi istiyorsan dedi kendini dedi al git dedi bana Al dedi git dedi çocuklarını dedi istiyorsan dedi kendini dedi al git dedi bana ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
              ),
          
              // High ve 5 scare butonları
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
                  Text(
                    "    stop starting, start finishing",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
          
              SizedBox(height: 10),
          
              // Subtask başlığı
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Subtask",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                ),
              ),
          
              SizedBox(height: 16),
          
              // Checkboxlu konteynırlar
          
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  // Column yerine Row çünkü yatay scroll
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
                    SizedBox(height: 12),
                    checkboxlu_container(
                        title: "UX Design for MONS calendar",
                        color: const Color.fromARGB(255, 187, 206, 247),
                        hours: "6 hours",
                        isChecked: isChecked2,
                        onChanged: (val) {
                          setState(() {
                            isChecked2 = val ?? false;
                          });
                        }),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  backgroundColor: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add, color: Colors.black),
                      SizedBox(width: 6),
                      Text(
                        "Add Subtask",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Attachment",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
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

  Widget NavIcon(IconData icon, int index) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Icon(
        icon,
        color: selectedIndex == index ? Colors.orange : Colors.grey,
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
      margin: EdgeInsets.only(left: 12),
      padding: EdgeInsets.only(left: 12),
      height: 80,
      width: 350,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              Material(
                // Checkbox için Material sarmaladım
                color: Colors.transparent,
                child: Checkbox(
                  value: isChecked,
                  onChanged: onChanged,
                  activeColor: Colors.orange,
                ),
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
}
