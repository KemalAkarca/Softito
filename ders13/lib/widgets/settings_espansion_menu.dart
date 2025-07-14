import 'package:flutter/material.dart';

class SettingsEspansionMenu extends StatefulWidget {
  const SettingsEspansionMenu({super.key});

  @override
  State<SettingsEspansionMenu> createState() => _SettingsEspansionMenuState();
}

class _SettingsEspansionMenuState extends State<SettingsEspansionMenu> {
  //ayarları kontrol eden değişkenler
  bool notificationsEnabled = true;
  bool darkMode = false;
  bool fingerPrintEnabled = false;
  bool autoSync = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          title: const Text("Bildirimler"),
          leading: const Icon(Icons.notifications),
          children: [
            SwitchListTile(
              title: const Text("Bildirimleri aç"),
              value: notificationsEnabled,
              onChanged: (Value) {
                setState(() {
                  notificationsEnabled = Value;
                });
              },
            ),
            SwitchListTile(
              title: Text("Otomatik Senkronizasyon"),
              value: autoSync,
              onChanged: (value) {
                setState(() {
                  autoSync = value;
                });
              },
            ),
          ],
        ),
        ExpansionTile(
          title: const Text("Tema"),
          leading: Icon(Icons.color_lens),
          children: [
            SwitchListTile(
              title: const Text("Karanlık Mod"),
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ],
        ),
        ExpansionTile(
          title: const Text("Güvenlik"),
          leading: Icon(Icons.security),
          children: [
            SwitchListTile(
              title: const Text("Parmak izi ile giriş"),
              value: fingerPrintEnabled,
              onChanged: (value) {
                setState(() {
                  fingerPrintEnabled = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
