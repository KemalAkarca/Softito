import 'package:api_islemleri/model/user_model.dart';
import 'package:flutter/material.dart';

class GlobalapiDetailPage extends StatelessWidget {
  final UserModel userModel;
  const GlobalapiDetailPage({required this.userModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        title: Text("Kişiler Detay"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Adı: ${userModel.name}"),
            Text("Kullanıcı adı: ${userModel.username}"),
            Text("Şirket: ${userModel.company.name}"),
            Text("Kullancı Email: ${userModel.email}"),
            Text(
              "Adress: ${userModel.address.street},${userModel.address.suite},${userModel.address.city},${userModel.address.zipcode}",
            ),
            Text("Enlem: ${userModel.address.geo.lat}"),
            Text("boylam: ${userModel.address.geo.lng}"),
          ],
        ),
      ),
    );
  }
}
