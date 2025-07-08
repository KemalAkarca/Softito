import 'package:flutter/material.dart';

import 'package:navigator_islemler2/hata_page.dart';
import 'package:navigator_islemler2/red_page.dart';
import 'package:navigator_islemler2/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      /*  routes: {
        "/": (context) => RedPage(),
        "/yellowPage": (context) => YellowPage(),
        "/bluePage": (context) => BluePage(),
      }, */
      onGenerateRoute: RouteGenerator.routeGenerator,
      /* onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => HataPage());
      }, */
      debugShowCheckedModeBanner: false,
      home: RedPage(),
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
