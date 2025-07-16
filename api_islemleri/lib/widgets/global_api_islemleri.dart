import 'package:api_islemleri/model/user_model.dart';
import 'package:api_islemleri/widgets/globalApi_Detail_Page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GlobalApiIslemleri extends StatefulWidget {
  const GlobalApiIslemleri({super.key});

  @override
  State<GlobalApiIslemleri> createState() => _GlobalApiIslemleriState();
}

class _GlobalApiIslemleriState extends State<GlobalApiIslemleri> {
  late Future<List<UserModel>> userList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userList = getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GlobalApi"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: FutureBuilder<List<UserModel>>(
          future: userList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var myUserList = snapshot.data!;
              return ListView.builder(
                itemCount: myUserList.length,
                itemBuilder: (context, index) {
                  var user = myUserList[index];
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              GlobalapiDetailPage(userModel: myUserList[index]),
                        ),
                      );
                    },
                    title: Text(user.name),
                    subtitle: Text(user.email),
                    leading: CircleAvatar(
                      radius: 48,
                      child: Text(user.id.toString()),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<List<UserModel>> getUserList() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      var response = await Dio().get(
        "https://jsonplaceholder.typicode.com/users",
      );

      List<UserModel> userList = [];

      if (response.statusCode == 200) {
        //Başarılı veri çekimi
        userList = (response.data as List)
            .map((userMap) => UserModel.fromJson(userMap))
            .toList();
      }
      return userList;
    } on DioException catch (e) {
      return Future.error(e.toString());
    }
  }
}
