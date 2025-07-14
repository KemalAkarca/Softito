import 'package:flutter/material.dart';

class NestedTabbarPage extends StatefulWidget {
  const NestedTabbarPage({super.key});

  @override
  State<NestedTabbarPage> createState() => _NestedTabbarPageState();
}

class _NestedTabbarPageState extends State<NestedTabbarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("İç İçe Sekmeli Tab"),
          foregroundColor: Colors.black,
          backgroundColor: Colors.blue.shade200,
          bottom: const TabBar(
            tabs: [
              Tab(text: "Yazlık"),
              Tab(text: "Kışlık"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            InnerTabView(categoryName: "Yazlık"),
            InnerTabView(categoryName: "Kışlık"),
          ],
        ),
      ),
    );
  }
}

class InnerTabView extends StatelessWidget {
  final String categoryName;
  const InnerTabView({required this.categoryName, super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Pantalon"),
              Tab(text: "Gömlek"),
              Tab(text: "Ceket"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text("$categoryName-Pantalon")),
                Center(child: Text("$categoryName-Gömlek")),
                Center(child: Text("$categoryName-Ceket")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
