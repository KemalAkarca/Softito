import 'package:flutter/material.dart';

class ExpansionTilePage extends StatefulWidget {
  final PageStorageKey expansionKey;
  const ExpansionTilePage({required this.expansionKey, super.key});

  @override
  State<ExpansionTilePage> createState() => _ExpansionTilePageState();
}

class _ExpansionTilePageState extends State<ExpansionTilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: widget.expansionKey,
      itemCount: 5,
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey(index),
          title: Text("Başlık ${index + 1}"),
          leading: Icon(Icons.wb_cloudy),
          /*  trailing: sağ köşedeki iconu değiştirir,
          initiallyExpanded: true dersem bütün hepsi açık kalır,
          maintainState: içerik temizlensin mi ,
          tilePadding: başlık alanının içini doldurur,
          */
          children: [
            Container(
              height: 200,
              color: index % 2 == 0 ? Colors.blue : Colors.green,
            ),
          ],
        );
      },
    );
  }
}
