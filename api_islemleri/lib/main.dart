import 'package:api_islemleri/widgets/global_api_islemleri.dart';
import 'package:api_islemleri/widgets/local_api_islemleri.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyProject());
  }
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    print("yükseklik: $deviceHeight,genişik $deviceWidth");
    return Scaffold(
      appBar: AppBar(
        title: Text("Api İşlemleri"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: deviceWidth * 0.43,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LocalApiIslemleri(),
                    ),
                  );
                },
                child: Text("Local Api"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: deviceWidth * 0.43,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GlobalApiIslemleri(),
                    ),
                  );
                },
                child: Text("Global Api"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
