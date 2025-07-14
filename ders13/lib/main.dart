import 'package:ders13/widgets/expansion_tile_page.dart';
import 'package:ders13/widgets/filter_menu_chips.dart';
import 'package:ders13/widgets/image_and_tabbar_page.dart';
import 'package:ders13/widgets/liste_ornek.dart';
import 'package:ders13/widgets/nested_tabbar_page.dart';
import 'package:ders13/widgets/page_view_page.dart';
import 'package:ders13/widgets/settings_espansion_menu.dart';
import 'package:ders13/widgets/simple_image_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FilterMenuChips(),
    );
  }
}

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  var keyList = PageStorageKey("Key Liste");
  var keyexpansion = PageStorageKey("Key expansion");

  late List<Widget> sayfalar;
  int bottomIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfalar = [
      ListeOrnek(listKey: keyList),
      //ExpansionTilePage(expansionKey: keyexpansion),
      SettingsEspansionMenu(),
      // PageViewPage(),
      SimpleImageSlider(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasarım Araçları"),
        backgroundColor: Colors.orange.shade900,
        foregroundColor: Colors.white,
      ),
      body: sayfalar[bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: bottomIndex,
        onTap: (index) {
          setState(() {
            bottomIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Liste"),
          BottomNavigationBarItem(
            icon: Icon(Icons.expand_outlined),
            label: "Expansion",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: "PageView"),
        ],
      ),
    );
  }
}
