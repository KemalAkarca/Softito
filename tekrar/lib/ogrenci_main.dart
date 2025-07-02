import 'package:flutter/material.dart';
import 'package:tekrar/ogrenci.dart';

class OgrenciMain
    extends StatefulWidget {
  const OgrenciMain({super.key});

  @override
  State<OgrenciMain> createState() =>
      _OgrenciMainState();
}

class _OgrenciMainState
    extends State<OgrenciMain> {
  List<Ogrenci>
  tumOgrenciler = List.generate(
    5000,
    (index) => Ogrenci(
      id: index + 1,
      isim: "Öğrenci adı =${index + 1}",
      soyisim:
          "Öğrenci adı =${index + 1}",
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: (context, index) {
            Ogrenci ogr =
                tumOgrenciler[index];
            return veriAlmaSabitElemani(
              ogr,
            );
          },
          separatorBuilder:
              (context, index) {
                return (index + 1) %
                            4 ==
                        0
                    ? Divider(
                        color: Colors
                            .green,
                        thickness: 3,
                      )
                    : Container();
              },
          itemCount:
              tumOgrenciler.length,
        ),
      ),
    );
  }

  SizedBox veriAlmaSabitElemani(
    Ogrenci ogr,
  ) {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: Card(
              color: Colors
                  .orange
                  .shade300,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(
                      12,
                    ),
              ),
              child: Align(
                alignment:
                    Alignment.center,
                child: ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    child: Text(
                      ogr.id.toString(),
                    ),
                  ),
                  title: Text(ogr.isim),
                  subtitle: Text(
                    ogr.soyisim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
