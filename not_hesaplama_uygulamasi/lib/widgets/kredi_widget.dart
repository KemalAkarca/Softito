import 'package:flutter/material.dart';
import 'package:not_hesaplama_uygulamasi/constants/sabitler.dart';
import 'package:not_hesaplama_uygulamasi/helper/data_helper.dart';

class KrediWidget extends StatefulWidget {
  final Function onKrediSecildi;
  const KrediWidget({required this.onKrediSecildi, super.key});

  @override
  State<KrediWidget> createState() => _KrediWidgetState();
}

class _KrediWidgetState extends State<KrediWidget> {
  double secilenKrediDeger = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade50,
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        focusColor: Colors.transparent,
        underline: Container(),
        value: secilenKrediDeger,

        items: DataHelper.dropdownKrediMenuBilgisi(),
        onChanged: (deger) {
          setState(() {
            secilenKrediDeger = deger!;
            widget.onKrediSecildi(deger);
          });
        },
      ),
    );
  }
}
