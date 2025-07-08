import 'package:flutter/material.dart';

class RedPage extends StatefulWidget {
  const RedPage({super.key});

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  late String name;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = "kemal";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Red Page"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Red Page", style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/yellowPage");
              },
              child: Text("Sarı Sayfaya git."),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/bluePage", arguments: name);
              },
              child: Text("Mavi Sayfaya git."),
            ),
          ],
        ),
      ),
    );
  }
}
