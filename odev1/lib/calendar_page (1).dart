import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tarih ve Gün Başlığı
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sep,2025",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            SizedBox(height: 16),
            
            // Günler
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dayWidget("M", "17"),
                dayWidget("T", "18"),
                dayWidget("W", "19"),
                dayWidget("T", "20", isSelected: true),
                dayWidget("F", "21"),
                dayWidget("S", "22"),
                dayWidget("S", "23"),
              ],
            ),

            SizedBox(height: 16),

            // Zaman çizelgesi ve etkinlikler
            Expanded(
              child: ListView(
                children: [
                  timeSlot("09:00", taskTitle: "Project Discussion", time: "09:00AM - 10:00AM", color: Colors.orange.shade100),
                  timeSlot("11:00", taskTitle: "Project Discussion", description: "Many desktop publishin\nPocaの♯ and web page editors now uso", time: "09:00AM - 10:00AM", color: Colors.blue.shade100, showDot: true),
                  timeSlot("13:30", taskTitle: "Lunch time", time: "09:00AM - 10:00AM", color: Colors.purple.shade100),
                  timeSlot("15:00", taskTitle: "Create color style", description: "Many desktop publishin\nPocaの♯ and web page editors now uso", time: "09:00AM - 10:00AM", color: Colors.lightBlue.shade100, showDot: true),
                  timeSlot("17:00", taskTitle: "Team meating", time: "09:00AM - 10:00AM", color: Colors.green.shade100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dayWidget(String day, String date, {bool isSelected = false}) {
    return Column(
      children: [
        Text(day, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.orange : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            date,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget timeSlot(String hour, {required String taskTitle, String? description, required String time, required Color color, bool showDot = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Saat ve Nokta
          SizedBox(
            width: 60,
            child: Column(
              children: [
                Text(hour, style: TextStyle(fontWeight: FontWeight.bold)),
                if (showDot)
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
          ),

          // Görev Kartı
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(taskTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  if (description != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(description, style: TextStyle(fontSize: 12)),
                    ),
                  SizedBox(height: 4),
                  Text(time, style: TextStyle(fontSize: 12, color: Colors.grey.shade700)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
